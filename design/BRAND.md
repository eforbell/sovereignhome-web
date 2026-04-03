# The Sovereign Home — Brand Guide

## Logo

The logomark is a **seedling with roots** — two asymmetric leaves on a stem, with subtle root lines below. It represents growth from a small beginning (the "seedling" you're given) and rootedness in the home.

- **Primary logo**: Logomark + "The Sovereign Home" wordmark (stacked or inline)
- **Logomark only**: Square format, works as favicon (48×48), app icon (512×512), GitHub avatar
- **Monochrome**: Works in single-color (green on white, white on green, black on white)

### Clear Space
Maintain padding equal to the height of one leaf around all sides of the logo.

---

## Color Palette

### Light Mode

| Token | Hex | Usage |
|-------|-----|-------|
| **Primary** | `#2D5016` | Deep Forest — brand anchor, buttons, links, logo bg |
| **Primary Light** | `#3E6B1F` | Hover states, lighter accents |
| **Primary Pale** | `#E8F0E0` | Tinted backgrounds, badges |
| **Secondary** | `#8B6914` | Warm Gold — secondary actions, bitcoin/financial elements |
| **Secondary Light** | `#B8912A` | Hover states for secondary |
| **Accent** | `#C4572A` | Terracotta — alerts, emphasis, problem framing |
| **Background** | `#FAF8F4` | Page background (warm off-white) |
| **Surface** | `#FFFFFF` | Cards, elevated surfaces |
| **Surface Alt** | `#F0EDE6` | Alternate section backgrounds |
| **Border** | `#DDD8CC` | Dividers, card borders |
| **Text** | `#1A1A18` | Primary body text |
| **Text Secondary** | `#5C5A52` | Supporting text |
| **Text Muted** | `#8A877D` | Captions, metadata |

### Dark Mode

| Token | Hex | Usage |
|-------|-----|-------|
| **Primary** | `#6BAF3D` | Lighter green for dark backgrounds |
| **Primary Light** | `#7EC44E` | Hover states |
| **Primary Pale** | `#1E2A16` | Tinted dark backgrounds |
| **Secondary** | `#D4A83A` | Lighter gold |
| **Accent** | `#E07A54` | Lighter terracotta |
| **Background** | `#141310` | Page background |
| **Surface** | `#1E1D19` | Cards |
| **Surface Alt** | `#262520` | Alternate sections |
| **Border** | `#3A382F` | Dividers |
| **Text** | `#EAE8E0` | Primary body text |
| **Text Secondary** | `#B0ADA3` | Supporting text |
| **Text Muted** | `#7A776D` | Captions |

### Semantic Colors

| Token | Light | Dark | Usage |
|-------|-------|------|-------|
| Success | `#3A7D2C` | `#6BAF3D` | Confirmations, available badges |
| Warning | `#B8912A` | `#D4A83A` | Caution states |
| Error | `#C4572A` | `#E07A54` | Errors, destructive actions |
| Info | `#3B6E8F` | `#5BA4C9` | Informational, calendar elements |

---

## Typography

### Heading: DM Serif Display
- **Source**: Google Fonts (free, open-source)
- **Why**: Warm serif with character — feels literary and grounded, not corporate. The slight contrast in stroke weight gives it life without being decorative.
- **Weights used**: Regular (400) only — the design doesn't need bold; size and color create hierarchy.

### Body: Source Sans 3
- **Source**: Google Fonts (free, open-source, Adobe's contribution to open type)
- **Why**: Exceptional readability at all sizes, especially mobile. Humanist sans-serif with warmth that pairs naturally with a serif heading. Full weight range available for flexibility.
- **Weights used**: Light (300), Regular (400), Medium (500), Semibold (600)

### Type Scale (Fluid, clamp-based)

| Token | Min | Max | Usage |
|-------|-----|-----|-------|
| `--text-xs` | 0.7rem | 0.8rem | Badges, fine print |
| `--text-sm` | 0.8rem | 0.9rem | Captions, nav links |
| `--text-base` | 0.95rem | 1.1rem | Body text |
| `--text-lg` | 1.1rem | 1.35rem | Lead paragraphs, card headings |
| `--text-xl` | 1.3rem | 1.75rem | Section sub-headings |
| `--text-2xl` | 1.6rem | 2.4rem | Section headings |
| `--text-3xl` | 2rem | 3.2rem | Hero tagline |
| `--text-4xl` | 2.4rem | 4.2rem | Large display (reserved) |

---

## Iconography

### Recommended Set: Lucide Icons
- **Why**: Clean 24×24 line icons, consistent 2px stroke, open-source (ISC license), React/Vue/Svelte packages available, actively maintained.
- **Stroke weight**: 1.75–2px (match Lucide defaults)
- **Size**: 24×24 default, 20×20 for tight spaces, 32×32 for feature callouts
- **Padding**: 4px internal padding when used inside colored containers

### App Icon Mapping

| App | Lucide Icon | Color Context |
|-----|-------------|---------------|
| Home Base | `home` | Primary green |
| Family Pulse | `activity` | Success green |
| Family Help | `clock` | Secondary gold |
| Family Dinner | `coffee` | Accent terracotta |
| Family Plan | `calendar` | Info blue |
| Bitcoin Accounting | `dollar-sign` (or custom ₿) | Secondary gold |
| Home Control | `sparkles` | Muted (coming soon) |
| Home Source | `file-text` | Muted (coming soon) |
| Family Ops | `wrench` | Muted (coming soon) |

---

## Design Principles

1. **Warm, not flashy** — This is furniture, not a gadget. Earthy tones, measured spacing, no gradients.
2. **Confident, not loud** — The work speaks. No exclamation marks, no "revolutionary" copy, no fake urgency.
3. **Organic rhythm** — Generous whitespace. Let content breathe. The seedling metaphor is felt in the pacing, not plastered everywhere.
4. **Mobile-first** — Every design decision prioritizes the phone viewport. Desktop is the enhancement.
5. **Accessible** — WCAG AA contrast ratios throughout. Proper heading hierarchy. Keyboard navigable.

---

## File Inventory

```
brand/
├── logomark.svg           # Square icon, light (green bg, white icon)
├── logomark-dark.svg      # Square icon, dark mode variant
├── logo-primary.svg       # Wordmark + icon, light background
└── BRAND.md               # This file
```

The landing page HTML contains the complete implementation with all CSS custom properties, dark mode support, responsive layout, and scroll-reveal animations.
