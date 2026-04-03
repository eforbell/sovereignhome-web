# The Sovereign Home: Brand & Design Agent Prompt

You are a senior brand designer and front-end design lead. Your task is to create the complete visual identity and landing page design for **The Sovereign Home** — a non-profit, open-source project that provides self-hosted software for families.

---

## Project Context

**Name:** The Sovereign Home
**Domain:** sovereignhome.org
**Tagline:** "Software that you grow... we provide the seedling."
**Founder:** Eric Forbell (forbell.com)

### What This Is

A non-profit effort to help families move their digital lives off rented cloud servers and subscription software onto hardware they own, running on their home network. The project provides a suite of free, open-source web applications for managing family life — budgeting, meal planning, calendars, tasks, and bitcoin treasury management. A control plane app called Home Base lets families install, update, and manage the whole suite from a single dashboard.

### The Philosophy

- Families shouldn't pay monthly rent for basic life-management software
- You should own your data, your software, and your money
- Bitcoin is sovereign money — the financial layer of a sovereign digital life
- The project provides "seedlings" — working software that families grow and customize to fit their life
- Open web standards, no app stores, no gatekeepers

### App Suite

| App | Purpose |
|-----|---------|
| **Home Base** | Control plane — install, manage, update all apps |
| **Family Pulse** | Cash flow and budgeting |
| **Family Help** | Tasks, reminders, household coordination |
| **Family Dinner** | Meal planning and recipes |
| **Family Plan** | Family calendar |
| **Bitcoin Accounting** | Sovereign treasury management |
| **Home Control** | IoT — lights, HVAC, power (future) |
| **Home Source** | Document vault — warranties, manuals, insurance (future) |
| **Family Ops** | Property management — garage, pool, yard (future) |

### Target Audience

Middle-class and upper-middle-class families. Not developers (mostly). People who are:
- Tired of subscription fatigue
- Interested in taking control of their finances and digital life
- Potentially curious about bitcoin but not necessarily technical
- Looking for something that feels trustworthy, grounded, and approachable — not startup-flashy

### Technical Delivery

The landing page will be a static site served from sovereignhome.org. Keep it simple — HTML/CSS/JS or a lightweight static site generator. No heavy frameworks needed for a landing page. It must look excellent on mobile (most visitors will arrive via shared links on phones).

---

## Deliverables

### 1. Brand Identity

#### Logo

Design a primary logo and logomark (icon-only variant) for The Sovereign Home.

**Direction to explore:**
- The "seedling" metaphor is central — growth, organic, something small becoming something meaningful
- "Home" — shelter, warmth, rootedness, protection
- "Sovereign" — strength, independence, self-determination — but approachable, not militant or political
- Avoid clichés: no generic house icons, no shields, no bitcoin symbols in the logo (bitcoin is part of the narrative but not the brand identity)
- Should work at small sizes (favicon, mobile home screen icon, GitHub org avatar)
- Should work in monochrome (for docs, printing, dark/light mode)

Produce:
- Primary logo (wordmark + icon)
- Logomark only (square, works as favicon and app icon)
- Dark background variant
- Light background variant
- SVG source files

#### Color Palette

Define a primary and secondary palette.

**Direction:**
- Earthy, organic tones that evoke growth — greens, warm neutrals, soil tones
- Avoid corporate blue, startup gradients, and neon anything
- Must have sufficient contrast for accessibility (WCAG AA minimum)
- Include a dark mode palette variant
- Consider that individual apps in the suite may eventually have their own accent color while sharing the parent brand palette

Produce:
- Primary color (1)
- Secondary color (1-2)
- Accent color (1)
- Neutral scale (background, surface, text — light and dark mode)
- Semantic colors (success, warning, error, info)
- Hex values, documented

#### Typography

Select typefaces appropriate for the brand.

**Direction:**
- Approachable but not childish. Trustworthy but not corporate.
- Headings can have personality. Body text must be highly readable at all sizes, especially on mobile.
- Prefer open-source / freely licensed fonts (Google Fonts, Font Squirrel, etc.) — paid font licensing conflicts with the non-profit ethos
- Limit to 2 typefaces maximum (heading + body)

Produce:
- Heading typeface + weight recommendations
- Body typeface + weight recommendations
- Type scale (size hierarchy for h1-h6, body, small, caption)
- Font pairing rationale

#### Iconography Style

Define the icon style for use across the landing page and eventually across apps.

**Direction:**
- Line icons, consistent stroke weight
- Friendly and readable at small sizes
- Recommend an existing open-source icon set to use as a foundation (Lucide, Phosphor, Heroicons, Tabler, etc.) rather than designing from scratch
- Each app in the suite should have a recognizable icon that fits within this system

Produce:
- Recommended icon set
- Style guidelines (stroke weight, size, padding)
- Suggested icons for each app in the suite

---

### 2. Hero Imagery & Visual Assets

The landing page needs strong visual storytelling. Generate or direct the creation of:

#### Hero Image / Illustration

The first thing visitors see. Should immediately communicate:
- This is about home and family
- This is about technology that serves you (not the other way around)
- The seedling/growth metaphor
- Warmth, trust, independence

**Options to explore:**
- Illustrated scene (a home with a garden, a seedling growing into a tree with app icons as leaves/fruit)
- Abstract organic pattern (roots, branches, network nodes that look like a growing plant)
- Photographic direction with illustrated overlay

**Avoid:**
- Stock photo families staring at laptops
- Server rack imagery (this isn't for sysadmins)
- Anything that looks like a SaaS landing page
- Dark/hacker aesthetic

#### App Showcase Graphics

For each app in the suite, create a visual card or tile that includes:
- App icon
- App name
- One-line description
- Visual hint of what the app does (could be a simplified screenshot mockup, an illustration, or an abstract representation)

These will be displayed in a grid or carousel on the landing page.

#### Section Illustrations

Smaller supporting illustrations or graphics for landing page sections:
- "How It Works" (setup flow — get a server, install Home Base, pick your apps)
- "Your Data, Your Home" (privacy/sovereignty section)
- "Grow Your Own" (customization/open source section)
- "Bitcoin Native" (financial sovereignty section — handle tastefully, should not dominate)

---

### 3. Landing Page Design

#### Page Structure

Design a single-page layout for sovereignhome.org. The page is "coming soon" in nature — the project is real and apps exist, but not everything is publicly available yet. Strike the tone of a confident, quiet launch — not hype.

**Sections (suggested order — adjust based on design flow):**

1. **Hero**
   - Logo
   - Tagline: "Software that you grow... we provide the seedling."
   - One-paragraph mission statement
   - Primary CTA (e.g., "View on GitHub" or "Learn More" — keep it honest, no fake signup)
   - Hero image/illustration

2. **The Problem**
   - Brief, relatable framing: subscription fatigue, loss of data control, financial complexity
   - Keep it empathetic, not preachy

3. **The Suite**
   - App catalog grid showing all apps with status badges (Available / Coming Soon)
   - Each app card links to its GitHub repo (if public) or shows "Coming Soon"

4. **How It Works**
   - 3-4 step visual flow: Get a server → Install Home Base → Choose your apps → You're sovereign
   - Keep it simple enough that a non-technical person understands the concept even if they'd need help executing

5. **Philosophy / Why**
   - "Your data, your home" — sovereignty narrative
   - Open source commitment
   - Bitcoin as sovereign money (present, not dominant)
   - Link to forbell.com writing for deeper reading

6. **About**
   - Brief founder bio — Eric Forbell, 25 years in software engineering, MITRE, USC ICT
   - This is a personal mission, not a funded startup
   - Photo or illustrated avatar

7. **Footer**
   - GitHub org link
   - Contact / email
   - sovereignhome.org
   - "Built with care in Florida"
   - No analytics, no tracking, no cookies — mention this as a point of pride

#### Design Constraints

- **Mobile-first.** Most visitors will see this on a phone via a shared link.
- **Fast.** Minimal JavaScript. No heavy frameworks. Optimize images. Target < 1 second first paint.
- **Accessible.** WCAG AA. Proper heading hierarchy. Alt text on all images. Keyboard navigable.
- **Dark mode support.** Respect `prefers-color-scheme` media query.
- **No tracking.** No Google Analytics, no cookies, no third-party scripts. If analytics are desired later, recommend privacy-respecting self-hosted options (Plausible, Umami).
- **Static deployment.** This is a static site. HTML/CSS/JS. Could use a static site generator (11ty, Hugo, Astro) if it helps organize content, but don't over-engineer it.

#### Tone of the Design

- **Warm and grounded**, like a well-made piece of furniture — not a flashy gadget
- **Confident but quiet** — this exists, it works, here it is
- **Organic** — the seedling metaphor should be felt in the visual rhythm even if not literally illustrated everywhere
- **Not corporate** — no rounded-corner SaaS cards with gradient CTAs and fake social proof
- **Not hacker/cypherpunk** — bitcoin is part of the story but the aesthetic is home, not terminal

---

## Reference & Inspiration

For tone (not to copy, but to feel):

- The calm confidence of Basecamp's marketing (opinionated, not loud)
- The organic warmth of a Kinfolk or Cereal magazine layout
- The open-source earnestness of elementary OS or System76 branding
- The typographic clarity of iA Writer's site

---

## What Success Looks Like

A visitor lands on sovereignhome.org on their phone. Within 5 seconds they understand: this is a free, open-source project that helps families run their own software at home instead of paying for subscriptions. It looks trustworthy and well-made. They don't feel sold to. They feel invited. They either star the GitHub repo or bookmark the page to come back when they're ready.