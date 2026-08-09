# Security Policy

## Scope

This repository contains the static public website for The Sovereign Home. In scope are security issues caused by committed HTML, CSS, JavaScript, images, metadata, or deployment instructions. Security of the separate Sovereign Home applications, a visitor's device or network, and third-party hosting providers is outside this repository's scope.

## Current security model

The site is intended to be static. It has no login, payment flow, form submission, application API, user-generated content, cookies, analytics, or tracking. It may load third-party fonts and link to external websites.

Do not add secrets, private household information, inline third-party scripts, analytics, forms, or dynamic server behavior without updating this policy and completing a security/privacy review. External links opened in a new tab must retain `rel="noopener noreferrer"`.

Local development commands may bind to `0.0.0.0`. Use them only on a trusted network or behind appropriate firewall/VPN controls. Production hosting should use HTTPS and standard static-site headers such as HSTS, Content-Security-Policy, `X-Content-Type-Options`, and a restrictive referrer policy where supported.

## Reporting a vulnerability

Report issues privately through a GitHub Security Advisory when available, or contact the repository owner through a private channel. Include the affected URL/file, reproduction steps, impact, and a safe proof of concept. Do not disclose a confirmed issue publicly before it has been reviewed.

There is no bug bounty program or guaranteed response SLA.
