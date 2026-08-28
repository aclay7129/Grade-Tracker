# 🚀 Grade Tracker - Quick Start Guide

## Step 1: Clone or Download the Repository

```bash
cd Grade-Tracker
```

## Step 2: Install Dependencies

```bash
npm install
```

This installs all required packages (React, Expo, Anthropic API, icons, etc).

## Step 3: Get Your API Key

You need a Claude API key for the syllabus parser.

1. Go to https://console.anthropic.com/
2. Sign up or log in (free tier available)
3. Create an API key
4. Copy the key (you'll use it in Step 4)

## Step 4: Set Up Your API Key

Open your terminal and run ONE of these:

**Option A: Temporary (session only)**
```bash
export ANTHROPIC_API_KEY="your-api-key-here"
```

**Option B: Permanent (Mac/Linux)**
Add to your `~/.bash_profile` or `~/.zshrc`:
```bash
export ANTHROPIC_API_KEY="your-api-key-here"
```
Then restart terminal.

**Option C: Permanent (Windows)**
- Press `Win + X` → System
- Click "Advanced system settings"
- Click "Environment Variables"
- Click "New..." under User variables
- Variable name: `ANTHROPIC_API_KEY`
- Variable value: `your-api-key-here`
- Click OK and restart terminal

## Step 5: Run the App

### Option A: Web (Easiest)

```bash
npm run web
```

Opens at http://localhost:3000 in your browser. Make changes and they auto-refresh.

### Option B: Mobile Development (Expo Go)

```bash
expo start
```

Then:
1. Download **Expo Go** app on your phone (App Store or Google Play)
2. Open the app
3. Scan the QR code shown in your terminal
4. The app loads on your phone instantly

### Option C: Production Mobile App (iOS/Android)

**First time setup:**
```bash
npm install -g expo-cli eas-cli
eas login
```
(Create free account at https://expo.dev if you don't have one)

**Build for iPhone:**
```bash
eas build --platform ios
```
- Waits ~15-30 minutes
- Downloads `.ipa` file
- Install on iPhone using Xcode or Apple Configurator 2

**Build for Android:**
```bash
eas build --platform android
```
- Waits ~15-30 minutes
- Downloads `.apk` file
- Send to Android phone and tap to install

## What Happens Next

1. **Open the app** and tap the `+` button to add a class
2. **Paste your syllabus** (or upload PDF) - the app auto-extracts grading breakdown
3. **Enter grades** as you get them back
4. **Watch your GPA** calculate in real-time

## Troubleshooting

| Problem | Solution |
|---------|----------|
| `npm install` fails | Delete `node_modules/` folder and `package-lock.json`, then run `npm install` again |
| `expo: command not found` | Run `npm install -g expo-cli eas-cli` |
| `eas: command not found` | Run `npm install -g eas-cli` |
| API key not working | Make sure you set `ANTHROPIC_API_KEY` and restarted your terminal |
| Syllabus parsing fails | Make sure your API key is valid at https://console.anthropic.com/ |
| App won't load on phone | Make sure your phone is on the same WiFi as your computer (for `expo start`) |

## Files You Created

```
Grade-Tracker/
├── grade-trackerv3.jsx       ← Your main app (DO NOT CHANGE)
├── App.jsx                    ← Entry point
├── package.json               ← Dependencies
├── app.json                   ← Expo config
├── eas.json                   ← Build config
├── babel.config.js            ← JavaScript compiler
├── storage.js                 ← Data storage
├── setup.sh                   ← Auto-setup script
├── SETUP.md                   ← Full setup guide
├── README.md                  ← Project docs
├── web/
│   ├── index.jsx              ← Web entry point
│   └── index.css              ← Web styles
├── public/
│   ├── index.html             ← HTML page
│   └── manifest.json          ← PWA config
└── .gitignore
```

## Next Steps

- 🎓 **Add your classes** and start logging grades
- 📱 **Share the app** with friends (send them the `.ipa` or `.apk` file)
- 🎨 **Customize colors/icons** for each class
- 📊 **Use the projections** to figure out what you need

## Questions?

- Check `SETUP.md` for detailed instructions
- Check `README.md` for feature documentation
- Visit https://expo.dev/help for Expo support
