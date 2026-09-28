#!/usr/bin/env bash
# Publish content/ to the site bucket and invalidate CloudFront.
# Bucket and distribution come from the CloudFormation stack outputs.
set -euo pipefail

STACK="${STACK:-sovereignhome-site}"
REGION="us-east-1"
ROOT="$(cd "$(dirname "$0")/.." && pwd)/content"

output() {
  aws cloudformation describe-stacks --region "$REGION" --stack-name "$STACK" \
    --query "Stacks[0].Outputs[?OutputKey=='$1'].OutputValue" --output text
}
BUCKET="$(output BucketName)"
DIST="$(output DistributionId)"

sync() { # sync <cache-control> <aws s3 sync filter args...>
  local cc="$1"; shift
  aws s3 sync "$ROOT" "s3://$BUCKET" --exclude '*' "$@" \
    --exclude '*.DS_Store' --cache-control "$cc" --no-progress
}

# Filenames are not fingerprinted, so HTML/CSS/JS stay short-lived.
sync 'public, max-age=300'    --include '*.html' --include '*.txt' --include '*.xml'
sync 'public, max-age=3600'   --include '*.css' --include '*.js'
sync 'public, max-age=604800' --include 'images/*' --include 'media/*'

# Remove objects that no longer exist locally (one pass, no re-uploads).
aws s3 sync "$ROOT" "s3://$BUCKET" --delete --exclude '*.DS_Store' --size-only --dryrun \
  | awk '/^\(dryrun\) delete:/ {print $3}' \
  | while read -r obj; do aws s3 rm "$obj"; done

aws cloudfront create-invalidation --distribution-id "$DIST" --paths '/*' \
  --query 'Invalidation.{Id:Id,Status:Status}' --output text
echo "Published to s3://$BUCKET via $DIST"
