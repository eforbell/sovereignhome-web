# Security Policy

## Scope

This repository contains the static public website for The Sovereign Home. In scope are security issues caused by committed HTML, CSS, JavaScript, images, metadata, or deployment instructions. Security of the separate Sovereign Home applications, a visitor's device or network, and third-party hosting providers is outside this repository's scope.

## Current security model

The site is intended to be static. It has no login, payment flow, form submission, application API, user-generated content, cookies, analytics, or tracking. It may load third-party fonts and link to external websites.

Do not add secrets, private household information, inline third-party scripts, analytics, forms, or dynamic server behavior without updating this policy and completing a security/privacy review. External links opened in a new tab must retain `rel="noopener noreferrer"`.

Local development commands may bind to `0.0.0.0`. Use them only on a trusted network or behind appropriate firewall/VPN controls. Production hosting should use HTTPS, HSTS, `X-Content-Type-Options`, and a restrictive referrer policy.

Any Content Security Policy must be tested against the actual page. The current site loads styles from `fonts.googleapis.com`, fonts from `fonts.gstatic.com`, and has an inline reveal script. A strict target after moving that script to an external file is: `default-src 'self'; style-src 'self' https://fonts.googleapis.com; font-src 'self' https://fonts.gstatic.com; img-src 'self' data:; script-src 'self'; object-src 'none'; base-uri 'self'; frame-ancestors 'none'`. Do not add a broad `unsafe-inline` allowance merely to avoid externalizing the script.

## Reporting a vulnerability

Report issues privately through a GitHub Security Advisory when available, or email `eric@forbell.com`. Include the affected URL/file, reproduction steps, impact, and a safe proof of concept. Do not disclose a confirmed issue publicly before it has been reviewed.

There is no bug bounty program or guaranteed response SLA.
