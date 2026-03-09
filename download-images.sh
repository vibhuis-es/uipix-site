#!/bin/bash
# Downloads all portfolio images from Odoo to local public/images/ folder
# Run this from the project root: bash download-images.sh

set -e

echo "=== Downloading Encore images ==="
mkdir -p public/images/encore

curl -L -o "public/images/encore/Executive-Dashboard.webp" "https://uipix.odoo.com/web/image/441-7e531710/Executive-Dashboard.webp"
curl -L -o "public/images/encore/BudgetAllocation.webp" "https://uipix.odoo.com/web/image/440-e2d8e464/BudgetAllocation.webp"
curl -L -o "public/images/encore/Analytics.webp" "https://uipix.odoo.com/web/image/442-574be359/Analytics.webp"
curl -L -o "public/images/encore/Screenshot-GM-Dashboard.webp" "https://uipix.odoo.com/web/image/443-87a2d64e/Screenshot%202026-02-02%20at%2010.05.54%E2%80%AFAM.webp"
curl -L -o "public/images/encore/Expense-validation.webp" "https://uipix.odoo.com/web/image/447-58eb2303/Expense-validation.webp"
curl -L -o "public/images/encore/Expense-validation-fail.webp" "https://uipix.odoo.com/web/image/449-5726cccf/Expense-validation-fail.webp"
curl -L -o "public/images/encore/Add-Expense.webp" "https://uipix.odoo.com/web/image/448-3a3a48b2/Add-Expense.webp"
curl -L -o "public/images/encore/Invoice-search.webp" "https://uipix.odoo.com/web/image/450-9afeef6a/Invoice-search.webp"
curl -L -o "public/images/encore/Exe-dashboard-m.webp" "https://uipix.odoo.com/web/image/452-9a648355/Exe-dashboard-m.webp"
curl -L -o "public/images/encore/Budget-allo-m.webp" "https://uipix.odoo.com/web/image/456-31427628/Budget-allo-m.webp"
curl -L -o "public/images/encore/Analytics-m.webp" "https://uipix.odoo.com/web/image/455-4bb1a32e/Analytics-m.webp"
curl -L -o "public/images/encore/Gm-dashboard-m.webp" "https://uipix.odoo.com/web/image/460-dae1f99b/Gm-dashboard-m.webp"
curl -L -o "public/images/encore/Add-expense-m.webp" "https://uipix.odoo.com/web/image/461-7287e842/Add-expense-m.webp"
curl -L -o "public/images/encore/Invoice-search-m.webp" "https://uipix.odoo.com/web/image/462-812902a0/Invoice-search-m.webp"
curl -L -o "public/images/encore/Exe-mockup.webp" "https://uipix.odoo.com/web/image/599-b6bb1b33/Exe-mockup.webp"
curl -L -o "public/images/encore/Budget-allocation-m.webp" "https://uipix.odoo.com/web/image/464-8590218a/Budget-allocation-m.webp"
curl -L -o "public/images/encore/Analytics-1m.webp" "https://uipix.odoo.com/web/image/469-a9c79113/Analytics-1m.webp"
curl -L -o "public/images/encore/Analytics-2m.webp" "https://uipix.odoo.com/web/image/471-cdc830ad/Analytics-2m.webp"
curl -L -o "public/images/encore/Search-invoice-m.webp" "https://uipix.odoo.com/web/image/470-3dceb2f4/Search-invoice-m.webp"

echo "=== Downloading Car Care images ==="
mkdir -p public/images/carcare

# Hero / mockup
curl -L -o "public/images/carcare/CC-ipad-mockup.png" "https://uipix.odoo.com/web/image/601-1aa4adf7/CC-ipad-mockup.png"

# Persona
curl -L -o "public/images/carcare/Bob-Persona.webp" "https://uipix.odoo.com/web/image/477-9010981c/Bob-Persona.webp"

# Workflow & Design Direction
curl -L -o "public/images/carcare/workflows.webp" "https://uipix.odoo.com/web/image/516-7dfd8fb4/workflows.webp"
curl -L -o "public/images/carcare/Design-direction.webp" "https://uipix.odoo.com/web/image/518-ce6ebf3d/Design-direction.webp"

# User Journey Map
curl -L -o "public/images/carcare/UserJourneyMap.png" "https://uipix.odoo.com/web/image/578-9ecb6c19/UserJourneyMap.png"

# Wireframe specs
curl -L -o "public/images/carcare/Wireframe-spec-1.webp" "https://uipix.odoo.com/web/image/536-1f128903/Wireframe-spec-1.webp"
curl -L -o "public/images/carcare/Wireframe-spec-2.webp" "https://uipix.odoo.com/web/image/535-8c2c3cad/Wireframe-spec-2.webp"

# Wireframe screens (8 screens in 4 pairs)
curl -L -o "public/images/carcare/CC-Wireframe-1.webp" "https://uipix.odoo.com/web/image/539-f4a9a5b8/CC-Wireframe-1.webp"
curl -L -o "public/images/carcare/CC-Wireframe-2.webp" "https://uipix.odoo.com/web/image/540-8baebc3b/CC-Wireframe-2.webp"
curl -L -o "public/images/carcare/CC-Wireframe-3.webp" "https://uipix.odoo.com/web/image/545-1a544e66/CC-Wireframe-3.webp"
curl -L -o "public/images/carcare/CC-Wireframe-4.webp" "https://uipix.odoo.com/web/image/546-89c30a3f/CC-Wireframe-4.webp"
curl -L -o "public/images/carcare/CC-Wireframe-5.webp" "https://uipix.odoo.com/web/image/547-1a544e66/CC-Wireframe-5.webp"
curl -L -o "public/images/carcare/CC-Wireframe-6.webp" "https://uipix.odoo.com/web/image/548-89c30a3f/CC-Wireframe-6.webp"
curl -L -o "public/images/carcare/CC-Wireframe-7.webp" "https://uipix.odoo.com/web/image/549-0c889e86/CC-Wireframe-7.webp"
curl -L -o "public/images/carcare/CC-Wireframe-8.webp" "https://uipix.odoo.com/web/image/550-fe01c89f/CC-Wireframe-8.webp"

# Screen Matrix
curl -L -o "public/images/carcare/Screen-Matrix.webp" "https://uipix.odoo.com/web/image/491-ae267079/Screen-Matrix.webp"

# Brand & Visual Design
curl -L -o "public/images/carcare/Brand-style.webp" "https://uipix.odoo.com/web/image/581-ed15f9eb/Brand-style.webp"
curl -L -o "public/images/carcare/Visual-guide.webp" "https://uipix.odoo.com/web/image/584-592a0486/Visual-guide.webp"

# High-Fidelity Design screens
curl -L -o "public/images/carcare/HiFi-1.png" "https://uipix.odoo.com/web/image/592-0e0fadaf/HiDi-1.png"
curl -L -o "public/images/carcare/HiFi-2.webp" "https://uipix.odoo.com/web/image/590-92060567/HiDi-2.webp"
curl -L -o "public/images/carcare/HiFi-3.webp" "https://uipix.odoo.com/web/image/589-4b8c970a/HiDi-3.webp"
curl -L -o "public/images/carcare/HiFi-4.webp" "https://uipix.odoo.com/web/image/591-d82bb8b7/HiDi-4.webp"

echo "=== Downloading shared images ==="
mkdir -p public/images

# Profile photo (About page & Hero)
curl -L -o "public/images/profile-photo.webp" "https://uipix.odoo.com/web/image/605-6cce9ab9/IMG_9591-1.webp"

# Site logo
curl -L -o "public/images/uipix-logo.webp" "https://uipix.odoo.com/web/image/website/1/logo/uipix?unique=7a04c59"

# Symbio6 placeholder
curl -L -o "public/images/symbio6-placeholder.webp" "https://uipix.odoo.com/web/image/website.s_media_list_default_image_1"

echo ""
echo "Done! Downloaded all images to public/images/"
echo "Encore: $(ls public/images/encore/ | wc -l) images"
echo "Car Care: $(ls public/images/carcare/ | wc -l) images"
echo "Shared: $(ls public/images/*.webp 2>/dev/null | wc -l) images"
