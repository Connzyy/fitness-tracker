# Fitness Tracker - Your Personal Workout & Nutrition Companion

A modern, intuitive fitness tracking application with built-in food database and macro tracking.

## Quick Start - Run as Website

### Method 1: Double-Click to Start (Easiest)

1. Double-click `START-SERVER.bat`
2. Your browser will show the server is running
3. Open your web browser and go to:
   ```
   http://localhost:8000
   ```
4. Click "Launch Fitness Tracker" to start using the app
5. Keep the terminal window open while using the app
6. Press `Ctrl+C` in the terminal to stop the server when done

### Method 2: Manual Start

1. Open Command Prompt or PowerShell
2. Navigate to this directory:
   ```
   cd C:\Users\conne\.claude
   ```
3. Run the server:
   ```
   python -m http.server 8000
   ```
4. Open your browser and visit: `http://localhost:8000`

### Method 3: Direct File Access (Limited Features)

You can also double-click `fitness-tracker.html` directly, but some features like PWA installation won't work without a server.

## Access URLs

When the server is running, you can access:

- **Home Page**: http://localhost:8000/
- **Fitness Tracker**: http://localhost:8000/fitness-tracker.html
- **Create Icons**: http://localhost:8000/create-icons.html
- **Installation Guide**: http://localhost:8000/INSTALLATION-GUIDE.md

## Features

### Workout Tracking
- ✓ Add exercises with name, sets, reps, and weight
- ✓ Check off exercises as you complete them
- ✓ Visual feedback for completed workouts
- ✓ Track different workout plans for different days
- ✓ Delete exercises you no longer need

### Nutrition Tracking
- ✓ **40+ foods** with accurate USDA nutrition data
- ✓ **Smart search** - type to find foods instantly
- ✓ **Complete macros** for every food:
  - Calories
  - Protein
  - Carbohydrates
  - Fat
- ✓ **Customizable portions** - adjust serving sizes
- ✓ **Live macro preview** - see nutrition before adding
- ✓ Track breakfast, lunch, and dinner separately
- ✓ View meal totals and daily totals

### Daily Summary Dashboard
- ✓ Total exercises and completion status
- ✓ Total daily calories consumed
- ✓ Total protein, carbs, and fat intake
- ✓ Meals logged counter
- ✓ Beautiful visual stats display

### Technical Features
- ✓ **Offline support** - works without internet
- ✓ **Local storage** - data saved automatically
- ✓ **Date picker** - track different days
- ✓ **PWA ready** - install as mobile app
- ✓ **Responsive design** - works on all devices
- ✓ **Modern UI** - beautiful gradient design

## Files in This Directory

```
C:\Users\conne\.claude\
│
├── index.html                  - Welcome page
├── fitness-tracker.html        - Main application
├── manifest.json              - PWA configuration
├── sw.js                      - Service worker
├── create-icons.html          - Icon generator
├── START-SERVER.bat           - Server starter script
├── README.md                  - This file
└── INSTALLATION-GUIDE.md      - Mobile installation guide
```

## Food Database

The app includes 40 common foods with complete nutrition data:

**Proteins**: Chicken Breast, Salmon, Tuna, Beef Steak, Turkey Breast, Pork Chop, Shrimp, Eggs, Tofu

**Grains**: Brown Rice, White Rice, Oatmeal, Quinoa, Pasta, Whole Wheat Bread

**Vegetables**: Broccoli, Spinach, Sweet Potato, Tomato, Carrots

**Fruits**: Banana, Apple, Orange, Strawberries, Blueberries, Avocado

**Dairy**: Greek Yogurt, Milk, Cheese, Cottage Cheese

**Nuts & Seeds**: Almonds, Walnuts, Peanut Butter

**Legumes**: Chickpeas, Lentils

**Other**: Pizza, Hamburger, French Fries, Ice Cream, Bacon

All nutrition values are per 100g and automatically calculated based on your serving size.

## How to Use

### Adding a Workout

1. Enter exercise name (e.g., "Bench Press")
2. Enter sets (e.g., "3")
3. Enter reps (e.g., "10")
4. Enter weight in kg (optional)
5. Click "Add Exercise"
6. Check off exercises as you complete them

### Tracking Nutrition

1. Click in the "Search for food..." box
2. Type at least 2 characters (e.g., "chi" for chicken)
3. Select a food from the dropdown list
4. Review the displayed macros (calories, protein, carbs, fat)
5. Adjust serving size if needed (default: 100g)
6. Click "Add to Breakfast/Lunch/Dinner"
7. View your meal totals and daily summary

### Changing Days

Use the date picker at the top to select different days and track your progress over time.

## Install as Mobile App

See `INSTALLATION-GUIDE.md` for detailed instructions on installing this as an app on your iPhone or Android device.

Quick steps:
1. Open `create-icons.html` and download both icons
2. Upload all files to a web host (GitHub Pages, Netlify, etc.)
3. **iPhone**: Open in Safari → Share → Add to Home Screen
4. **Android**: Open in Chrome → Menu → Install app

## Accessing from Other Devices

### Access from Phone/Tablet on Same Network

1. Find your computer's IP address:
   - Open Command Prompt
   - Type: `ipconfig`
   - Look for "IPv4 Address" (e.g., 192.168.1.100)

2. Start the server on your computer using `START-SERVER.bat`

3. On your phone/tablet, open browser and go to:
   ```
   http://YOUR-IP-ADDRESS:8000
   ```
   (Replace YOUR-IP-ADDRESS with your actual IP)

### Access from Anywhere

Upload all files to a free hosting service:
- **GitHub Pages**: Free, easy to set up
- **Netlify**: Free, automatic deployments
- **Vercel**: Free, fast deployment
- **Firebase Hosting**: Free tier available

## Customization

### Adding More Foods

1. Open `fitness-tracker.html` in a text editor
2. Find the `foodDatabase` array (around line 556)
3. Add new foods following this format:
   ```javascript
   { name: "Food Name", calories: 100, protein: 20, carbs: 30, fat: 5 }
   ```
4. All values should be per 100g
5. Save and reload the page

### Changing Colors

The app uses a purple gradient theme. To change colors:
1. Open `fitness-tracker.html`
2. Find the CSS section (around line 7-407)
3. Look for color codes like `#667eea` and `#764ba2`
4. Replace with your preferred colors

## Troubleshooting

### Server won't start
- Make sure Python is installed: `python --version`
- Check if port 8000 is already in use
- Try a different port: `python -m http.server 8080`

### Can't access from browser
- Make sure the server is running (terminal window open)
- Check you're using the correct URL: `http://localhost:8000`
- Try `http://127.0.0.1:8000` instead

### Data disappeared
- Data is stored in browser's local storage
- Clearing browser data will delete your tracking
- Don't use private/incognito mode
- Each browser has separate storage

### Food search not working
- The database is built-in (no internet needed)
- Type at least 2 characters to search
- Search is case-insensitive
- Try different keywords

## Privacy & Security

- ✓ All data stays on your device
- ✓ No account or login required
- ✓ No data sent to any servers
- ✓ No tracking or analytics
- ✓ Completely private and offline-capable

## Tips for Best Results

1. **Be Consistent**: Log your meals and workouts daily
2. **Be Accurate**: Weigh your food for precise serving sizes
3. **Plan Ahead**: Add tomorrow's workout plan today
4. **Set Goals**: Use the daily summary to track your targets
5. **Check Off**: Mark exercises complete as you go
6. **Backup**: Take screenshots of important data

## Requirements

- **Web Browser**: Chrome, Firefox, Safari, or Edge
- **Python**: Version 3.x (for running local server)
- **Modern Browser**: For best experience use latest version

## Support & Updates

This is a standalone application with no external dependencies. To update:
1. Download the new version
2. Replace the old files
3. Your data will be preserved (stored in browser)

## Version

**Version**: 1.0
**Last Updated**: January 2026
**Features**: Workout tracking, Nutrition database, Macro tracking, PWA support

---

**Enjoy your fitness journey!** 💪

For detailed mobile installation instructions, see `INSTALLATION-GUIDE.md`
