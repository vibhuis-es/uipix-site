---
title: "Car Care Inc."
subtitle: "Car Repair Work Order Application"
year: "2022"
duration: "8 Weeks"
platforms: "iPad Application"
role: "UX Designer"
industry: "Automobile"
order: 2
draft: false
comingSoon: false
cardImage: "/images/carcare/CC-ipad-mockup.png"
heroImage: "/images/carcare/CC-ipad-mockup.png"
problem: |
  Senior technicians spend 30-45 minutes per work order typing vehicle details, diagnoses, and customer communications that take them away from actual repair work. This repetitive manual entry introduces errors, delays repairs, and frustrates customers.
gallery:
  - image: "/images/carcare/Bob-Persona.webp"
    caption: "Bob - Senior Technician Persona"
    section: "other"
  - image: "/images/carcare/Brand-style.webp"
    caption: "Brand Style Guide"
    section: "high-fidelity"
  - image: "/images/carcare/Visual-guide.webp"
    caption: "Visual Design Guide"
    section: "high-fidelity"
  - image: "/images/carcare/Screen-Matrix.webp"
    caption: "Screen Matrix - Information Architecture"
    section: "wireframes"
metrics:
  - value: "45→12 min"
    label: "Work order completion time"
    description: "Average per work order"
  - value: "73%"
    label: "Customer satisfaction increase"
    description: "Faster turnaround and transparent communication"
  - value: "100%"
    label: "Data accuracy"
    description: "Reduced errors through automation and templates"
  - value: "Zero"
    label: "Training time needed"
    description: "Intuitive design meant immediate adoption"
reflection: |
  Building for automotive technicians taught us that the best enterprise software feels invisible. Bob doesn't care about features — he cares about finishing work orders and getting back under the hood. Every design decision was filtered through that lens.
---

## Research Insights

### Pain Points
- Too much manual documentation — technicians spend significant time writing out repair notes
- Repeating the same information — common repairs documented from scratch every time
- Switching between systems — moving between paper forms and digital tools breaks flow
- Slow customer approvals — waiting for review and approval creates idle time
- Parts lookup friction — finding and ordering parts requires multiple steps

### UX Opportunities
- Guided workflows — step-by-step flows that reduce decisions and mental load
- Quick-select inputs — pre-populated options for common repairs and issues
- Visual documentation — photo capture and annotation to minimize typing
- Real-time summaries — auto-generated customer-facing summaries
- Digital sign-off — in-app approval flow to eliminate delays

## Design Goals

1. **Minimize Typing** — VIN scan + templates to reduce manual data entry
2. **Fast Customer Sign-off** — Photos + digital signature for paperless workflows
3. **Work Offline** — Sync automatically when connected to network

## Competitive Landscape

We analyzed leading platforms: Shopmonkey (strong communication, complex workflow), Tekmetric (great reporting, weak mobile), RepairShopr (good integrations, dated UI), and Mitchell 1 (industry standard, enterprise-focused).

**Our opportunity:** Build a modern, intuitive iPad-first experience that prioritizes the technician's workflow.

## Primary User: Bob — Senior Technician

Bob represents experienced technicians who prioritize efficiency over learning new technology. The interface must feel intuitive from the first interaction, with clear guidance and minimal cognitive load.

## Core Workflows

### Create Work Order
Scan VIN → Auto-populate vehicle history → Select repair template → Customize → Capture photos → Complete

### Document Work
Take photos → Add annotations → Link to sections → Auto-organize by stage

### Customer Sign-off
Display details + photos → Capture digital signature → Instant receipt → Auto-sync
