#!/bin/bash

# Create images directory if it doesn't exist
mkdir -p public/images

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Downloading UiPix portfolio images from Odoo...${NC}\n"

# Homepage images
echo -e "${GREEN}Downloading homepage images...${NC}"
curl -L -o public/images/logo.png "https://uipix.odoo.com/web/image/website/1/logo/uipix?unique=7a04c59"
curl -L -o public/images/profile-photo.webp "https://uipix.odoo.com/web/image/605-6cce9ab9/IMG_9591-1.webp"
curl -L -o public/images/encore-mockup.webp "https://uipix.odoo.com/web/image/599-b6bb1b33/Exe-mockup.webp"
curl -L -o public/images/carcare-mockup.webp "https://uipix.odoo.com/web/image/602-b2cc34e1/CC-ipad-mockup.webp"
curl -L -o public/images/symbio6-placeholder.webp "https://uipix.odoo.com/web/image/website.s_media_list_default_image_1"

# Encore case study images
echo -e "${GREEN}Downloading Encore case study images...${NC}"
curl -L -o public/images/encore-executive-dashboard.webp "https://uipix.odoo.com/web/image/441-7e531710/Executive-Dashboard.webp"
curl -L -o public/images/encore-budget-allocation.webp "https://uipix.odoo.com/web/image/440-e2d8e464/BudgetAllocation.webp"
curl -L -o public/images/encore-expense-validation-fail.webp "https://uipix.odoo.com/web/image/449-5726cccf/Expense-validation-fail.webp"
curl -L -o public/images/encore-invoice-search.webp "https://uipix.odoo.com/web/image/450-9afeef6a/Invoice-search.webp"
curl -L -o public/images/encore-expense-validation.webp "https://uipix.odoo.com/web/image/447-58eb2303/Expense-validation.webp"
curl -L -o public/images/encore-add-expense.webp "https://uipix.odoo.com/web/image/448-3a3a48b2/Add-Expense.webp"
curl -L -o public/images/encore-wireframe-desktop.webp "https://uipix.odoo.com/web/image/443-87a2d64e/Screenshot%202026-02-02%20at%2010.05.54%E2%80%AFAM.webp"
curl -L -o public/images/encore-analytics.webp "https://uipix.odoo.com/web/image/442-574be359/Analytics.webp"

# Encore mobile images
echo -e "${GREEN}Downloading Encore mobile images...${NC}"
curl -L -o public/images/encore-exe-dashboard-m.webp "https://uipix.odoo.com/web/image/452-9a648355/Exe-dashboard-m.webp"
curl -L -o public/images/encore-budget-allo-m.webp "https://uipix.odoo.com/web/image/456-31427628/Budget-allo-m.webp"
curl -L -o public/images/encore-analytics-m.webp "https://uipix.odoo.com/web/image/455-4bb1a32e/Analytics-m.webp"
curl -L -o public/images/encore-gm-dashboard-m.webp "https://uipix.odoo.com/web/image/460-dae1f99b/Gm-dashboard-m.webp"
curl -L -o public/images/encore-add-expense-m.webp "https://uipix.odoo.com/web/image/461-7287e842/Add-expense-m.webp"
curl -L -o public/images/encore-invoice-search-m.webp "https://uipix.odoo.com/web/image/462-812902a0/Invoice-search-m.webp"

# Car Care case study images
echo -e "${GREEN}Downloading Car Care case study images...${NC}"
curl -L -o public/images/carcare-bob-persona.webp "https://uipix.odoo.com/web/image/477-9010981c/Bob-Persona.webp"
curl -L -o public/images/carcare-brand-style.webp "https://uipix.odoo.com/web/image/581-ed15f9eb/Brand-style.webp"
curl -L -o public/images/carcare-visual-guide.webp "https://uipix.odoo.com/web/image/584-592a0486/Visual-guide.webp"
curl -L -o public/images/carcare-screen-matrix.webp "https://uipix.odoo.com/web/image/491-ae267079/Screen-Matrix.webp"

echo -e "\n${GREEN}✓ All images downloaded successfully!${NC}"
echo -e "${BLUE}Images are located in: public/images/${NC}\n"
