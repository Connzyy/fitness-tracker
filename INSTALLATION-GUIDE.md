# Fitness Tracker - Installation Guide

## Quick Start

Your Fitness Tracker app is now ready to be installed on your iPhone or Android device as a Progressive Web App (PWA).

## Files Created

The following files have been created in `C:\Users\conne\.claude\`:
- `fitness-tracker.html` - Main app file
- `manifest.json` - PWA configuration
- `sw.js` - Service worker for offline functionality
- `create-icons.html` - Tool to generate app icons
- `INSTALLATION-GUIDE.md` - This file

## Step 1: Create App Icons

1. Open `create-icons.html` in your web browser
2. Click the "Download 192x192" button to download the first icon
3. Click the "Download 512x512" button to download the second icon
4. Save both icons (`icon-192.png` and `icon-512.png`) in the same folder as the other files

## Step 2: Host Your App

To install the app on your iPhone, you need to serve it from a web server. Choose one of these options:

### Option A: Use a Local Server (Recommended for Testing)

1. Install Python (if not already installed)
2. Open a terminal/command prompt
3. Navigate to the folder: `cd C:\Users\conne\.claude`
4. Run: `python -m http.server 8000`
5. Your app will be available at `http://localhost:8000/fitness-tracker.html`

### Option B: Upload to a Hosting Service (For Permanent Use)

Upload all files to one of these free hosting services:
- **GitHub Pages** (recommended)
- **Netlify**
- **Vercel**
- **Firebase Hosting**

## Step 3: Install on iPhone

**IMPORTANT: You MUST use Safari browser on iOS**

1. Open **Safari** on your iPhone (Chrome won't work for iOS installation)
2. Navigate to your app URL:
   - If using local server: `http://YOUR-COMPUTER-IP:8000/fitness-tracker.html`
   - If using hosting: Your hosted URL
3. Tap the **Share button** (square with arrow pointing up) at the bottom
4. Scroll down and tap **"Add to Home Screen"**
5. Edit the name if desired (default: "Fitness Tracker")
6. Tap **"Add"**
7. The app icon will appear on your home screen

## Step 4: Install on Android

1. Open **Chrome** on your Android device
2. Navigate to your app URL
3. You may see an "Install" banner at the bottom - tap it
4. OR tap the menu (three dots) → "Add to Home screen" or "Install app"
5. Confirm the installation
6. The app will appear on your home screen

## Features

### Workout Tracker
- Add exercises with sets, reps, and weight
- Check off completed exercises
- Track your workout plan daily

### Nutrition Tracker with Food Database
- **40+ common foods** pre-loaded with accurate nutrition data
- **Smart search** - type to find foods instantly
- **Complete macros** displayed for each food:
  - Calories
  - Protein
  - Carbohydrates
  - Fat
- **Customizable portions** - adjust serving size (default: 100g)
- **Live macro preview** - see nutrition info before adding
- Track breakfast, lunch, and dinner separately
- View daily totals for all macros

### Daily Summary
- Total exercises and completion status
- Total daily calories
- Total protein, carbs, and fat intake
- Track different days using the date picker

### Offline Support
- Works without internet connection after first load
- All data saved locally on your device
- Never lose your progress

## Available Foods in Database

The app includes 40 common foods with accurate USDA nutrition data:

**Proteins:** Chicken Breast, Salmon, Tuna, Beef Steak, Turkey Breast, Pork Chop, Shrimp, Eggs, Bacon

**Grains:** Brown Rice, White Rice, Oatmeal, Quinoa, Pasta, Whole Wheat Bread

**Vegetables:** Broccoli, Spinach, Sweet Potato, Tomato, Carrots

**Fruits:** Banana, Apple, Orange, Strawberries, Blueberries, Avocado

**Dairy:** Greek Yogurt, Milk, Cheese, Cottage Cheese

**Nuts & Legumes:** Almonds, Walnuts, Peanut Butter, Chickpeas, Lentils, Tofu

**Other:** Pizza, Hamburger, French Fries, Ice Cream

All nutrition values are per 100g, and the app automatically calculates based on your serving size.

## How to Use the Food Search

1. Click in the "Search for food..." box
2. Type at least 2 characters (e.g., "chi" for chicken)
3. Select a food from the dropdown
4. The app shows complete nutrition info (calories, protein, carbs, fat)
5. Adjust the serving size if needed (default: 100g)
6. Click "Add to [Meal]" to log it
7. View your meal totals and daily summary

## Troubleshooting

### Install button doesn't appear on iPhone
- Make sure you're using Safari (not Chrome or other browsers)
- The app must be served over HTTPS or from localhost
- Try refreshing the page

### App doesn't work offline
- Make sure you've opened the app at least once while online
- The service worker needs to cache files on first visit
- Check that all files are in the same directory

### Data disappeared
- Data is stored in browser local storage
- Clearing browser data will delete your tracking data
- Don't use private/incognito mode

### Icons don't show up
- Make sure you downloaded both icon files from `create-icons.html`
- Icons must be named exactly `icon-192.png` and `icon-512.png`
- Icons must be in the same folder as other files

### Food search not working
- The food database is built into the app (no internet required)
- Type at least 2 characters to see results
- Search is case-insensitive
- Try different keywords (e.g., "breast" instead of "chicken")

## Tips for Best Experience

1. **Daily Routine**: Pick a specific time each day to log your meals
2. **Pre-planning**: Add tomorrow's workout plan today
3. **Consistency**: Check off exercises as you complete them
4. **Accuracy**: Weigh your food for precise serving sizes
5. **Macro Goals**: Use the daily summary to track your nutrition targets
6. **Backup**: Take screenshots of your data periodically

## Expanding the Food Database

The food database is stored in the `foodDatabase` array in `fitness-tracker.html`. To add more foods:

1. Open `fitness-tracker.html` in a text editor
2. Find the `foodDatabase` array (around line 556)
3. Add new entries following this format:
   ```javascript
   { name: "Food Name", calories: 100, protein: 20, carbs: 30, fat: 5 }
   ```
4. All values should be per 100g
5. Save and reload the app

## Need Help?

Common questions:
- **Q: Can I track snacks?** A: Add them to any meal category
- **Q: Can I edit past days?** A: Yes, use the date picker
- **Q: Does it sync across devices?** A: No, data is stored locally per device
- **Q: Can I export my data?** A: Not currently, but you can screenshot your stats

## Privacy

- All data stays on your device
- No account required
- No data sent to servers
- No tracking or analytics
- Completely private and secure

Enjoy tracking your fitness journey!
