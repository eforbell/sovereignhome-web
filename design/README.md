# The Sovereign Home — Brand & Landing Page Kit

Grounded in the project brief for **The Sovereign Home**: a non-profit, open-source effort to help families run their own software at home. The system below translates the brief into a usable visual identity, landing-page structure, and a starter static site. fileciteturn0file0

## 1) Brand Identity

### Brand idea
**A sheltered seedling**: something living, small, and full of promise, protected inside the home until it grows into part of family life.

### Logo concept
The mark uses three ideas in one shape:
- an **arched shelter** instead of a cliché house outline
- a **seedling** with two leaves for growth and care
- a **hearth / planter base** to suggest groundedness and the physical home

This keeps the symbol domestic and organic without reading as a startup badge, shield, or crypto emblem.

### Logo files included
- `assets/logo-primary-light.svg`
- `assets/logo-primary-dark.svg`
- `assets/logo-mark-light.svg`
- `assets/logo-mark-dark.svg`

### Color palette

#### Core palette
| Role | Name | Hex | Notes |
|---|---|---:|---|
| Primary | Evergreen | `#365B43` | Main brand color, headings, strong UI accents |
| Secondary | Hearth Clay | `#8A5A44` | Warm earthy complement, buttons, highlights |
| Secondary | Moss | `#6F8A55` | Soft organic support tone |
| Accent | Harvest Gold | `#B8832F` | Warm signal color for emphasis, never neon |

#### Neutral scale — light mode
| Role | Hex |
|---|---:|
| Background | `#F6F1E7` |
| Surface | `#FFFDFC` |
| Surface 2 | `#EFE6D7` |
| Border | `#D4C8B6` |
| Text primary | `#1F1A17` |
| Text secondary | `#51473E` |
| Text muted | `#786D63` |

#### Neutral scale — dark mode
| Role | Hex |
|---|---:|
| Background | `#171613` |
| Surface | `#221F1B` |
| Surface 2 | `#2C2823` |
| Border | `#4A4138` |
| Text primary | `#F4EDE1` |
| Text secondary | `#D8CCBA` |
| Text muted | `#B7AA97` |

#### Semantic colors
| Role | Hex |
|---|---:|
| Success | `#4E7A57` |
| Warning | `#A8742D` |
| Error | `#9E4B3E` |
| Info | `#56738A` |

### Typography

#### Pairing
- **Headings:** Fraunces
- **Body/UI:** Inter

Fraunces is a soft, old-style display serif that gives the brand warmth and editorial presence, while Inter is designed for screen readability and performs cleanly at small sizes. Both are available through Google Fonts, and Lucide provides a stroke-based open icon system that fits the product’s utility-first feel. citeturn766795search0turn766795search1turn766795search5

#### Weight recommendations
- Fraunces: 600–700 for hero and section headings, 500 for smaller section labels
- Inter: 400 for body, 500 for UI labels, 600 for buttons and nav

#### Type scale
| Token | Size |
|---|---:|
| h1 | clamp(2.5rem, 6vw, 4.75rem) |
| h2 | clamp(1.875rem, 4vw, 3rem) |
| h3 | clamp(1.375rem, 3vw, 2rem) |
| h4 | 1.25rem |
| h5 | 1.125rem |
| h6 | 1rem |
| Body L | 1.125rem |
| Body | 1rem |
| Small | 0.9375rem |
| Caption | 0.8125rem |

### Iconography style

#### Recommended icon system
**Lucide**. It is consistent, lightweight, open-source, and already built around the exact line-based language the brief calls for. The official customizer defaults show a 24px icon size and a 2px stroke, which is a good baseline for the system. citeturn766795search2turn766795search5

#### Guidelines
- Base size: **24px**
- Small dense UI size: **20px**
- Stroke: **2px**
- Corner feel: rounded but not bubbly
- Clear padding: at least **25%** of the icon box
- Use outline icons by default; reserve filled pills/badges for state only

#### Suggested app icons
| App | Suggested Lucide-style icon direction |
|---|---|
| Home Base | Home + Sprout / LayoutDashboard |
| Family Pulse | Activity / Wallet |
| Family Help | CheckSquare / HandHelping |
| Family Dinner | CookingPot / UtensilsCrossed |
| Family Plan | CalendarDays |
| Bitcoin Accounting | Landmark / BookOpen / Receipt |
| Home Source | FileArchive / FolderTree |
| Home Ops | Wrench / Hammer / Trees |

---

## 2) Hero imagery and supporting assets

### Hero illustration direction
Included as `assets/hero-garden-network.svg`.

Concept:
- A warm hillside home
- A seedling growing upward into a branching canopy
- App nodes as fruit/leaves
- Roots rendered like a calm network diagram below the soil

This communicates home, technology, and growth without looking like a server diagram or stock-family SaaS banner.

### Section illustrations
Included:
- `assets/how-it-works.svg`
- `assets/your-data.svg`
- `assets/grow-your-own.svg`
- `assets/bitcoin-native.svg`

These are intentionally lightweight SVG illustrations so the site stays fast and static-deployable.

---

## 3) Landing page design system

### Tone
- Quiet confidence
- Warm materials, not glossy UI chrome
- Editorial spacing
- Product cards that feel like printed labels or wooden drawers, not venture-funded SaaS blocks

### Page structure
The static starter page in `index.html` implements:
1. Hero
2. Problem framing
3. App suite
4. How it works
5. Philosophy / why
6. About the founder
7. Footer

### Honest CTAs
- **View on GitHub**
- **Read the philosophy**
- **Follow the project**

No fake signup forms, no waitlist theater.

### Status system
- **Available**
- **Developer Preview**
- **Experimental**
- **Planned**

Use pills with low saturation; never loud gradients.

---

## 4) Implementation notes

### Accessibility
- Semantic sections and heading hierarchy
- Contrast tuned for AA-level reading comfort
- Keyboard-visible focus states
- Respect for `prefers-color-scheme`
- No motion dependency

### Performance
- Static HTML/CSS
- SVG illustrations
- No tracking scripts
- No third-party JS

### Deployment
Suitable for:
- GitHub Pages
- Netlify static hosting
- Cloudflare Pages
- Nginx/Caddy on your own server

---

## 5) Next design moves
1. Swap in real GitHub repo URLs and contact details
2. Replace the placeholder founder image with a real portrait or illustrated avatar
3. Create per-app mini mockups once screenshots stabilize
4. Export the logomark to PNG sizes for favicon and app icons
