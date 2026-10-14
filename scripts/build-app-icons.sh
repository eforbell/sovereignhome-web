#!/usr/bin/env bash
# Build the homeApps icon suite into content/images/apps/<app>/ for the CDN
# (e.g. BRRR_ICON_URL=https://sovereignhome.org/images/apps/family-pulse/icon-180.png).
# Sources are the sibling app checkouts under HOMEAPPS (default: this repo's parent).
# Needs Chromium and ImageMagick. SVGs render through headless Chromium because
# several favicons are emoji <text>, which rsvg-convert draws as monochrome glyphs;
# emoji come from the installed color emoji font (Noto Color Emoji here).
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
HOMEAPPS="${HOMEAPPS:-$(dirname "$REPO")}"
OUT="$REPO/content/images/apps"
SIZES=(180 512)
CHROMIUM="${CHROMIUM:-chromium}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

render_svg() { # render_svg <svg> <size> <out.png>
  printf '<!doctype html><body style="margin:0"><img src="file://%s" style="display:block;width:%spx;height:%spx">' \
    "$1" "$2" "$2" > "$TMP/page.html"
  "$CHROMIUM" --headless=new --disable-gpu --hide-scrollbars --default-background-color=00000000 \
    --force-device-scale-factor=1 --window-size="$2,$2" --allow-file-access-from-files \
    --screenshot="$TMP/shot.png" "file://$TMP/page.html" >/dev/null 2>&1
  magick "$TMP/shot.png" -strip "$3"
}

# slug  source (relative to HOMEAPPS; iOS-specific art preferred over favicons)
APPS=(
  "bitcoin-accounting bitcoinAccounting/src/python/web/ui/static/brand/bitcoin-shield-logo.png"
  "bug-base           bugBase/public/favicon.svg"
  "family-dinner      familyDinner/public/favicon.svg"
  "family-help        familyHelp/public/favicon.svg"
  "family-plan        familyPlan/public/favicon.svg"
  "family-pulse       familyPulse/images/family-pulse-icon_1024x1024.png"
  "fast-to-eat        fastToEat/public/favicon.svg"
  "helm               helm/src/python/schwab_helm/web/ui/static/apple-touch-icon.svg"
  "home-base          homeBase/public/favicon.svg"
  "home-ops           homeOps/public/favicon.svg"
  "home-source        homeSource/public/favicon.svg"
)

for entry in "${APPS[@]}"; do
  read -r slug src <<<"$entry"
  src="$HOMEAPPS/$src"
  [[ -f "$src" ]] || { echo "missing source for $slug: $src" >&2; exit 1; }
  dest="$OUT/$slug"
  mkdir -p "$dest"

  for size in "${SIZES[@]}"; do
    case "$src" in
      *.svg) render_svg "$src" "$size" "$dest/icon-$size.png" ;;
      *)     magick "$src" -resize "${size}x${size}" -strip "$dest/icon-$size.png" ;;
    esac
  done
  if [[ "$src" == *.svg ]]; then cp "$src" "$dest/icon.svg"; fi
  echo "built $slug"
done
