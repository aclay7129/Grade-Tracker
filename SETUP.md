# Grade Tracker - Setup Instructions

## Prerequisites

Before you build the mobile app, make sure you have:

1. **Node.js & npm** (version 16+)
   - Download from https://nodejs.org/
   - Verify: `node --version` and `npm --version`

2. **An Expo account** (free)
   - Sign up at https://expo.dev
   - This is needed to build iOS and Android apps

3. **Claude API Key** (for syllabus parsing)
   - Get one at https://console.anthropic.com/
   - You'll add this to the app

## Step 1: Initialize the Project

```bash
# Navigate to your Grade Tracker directory
cd Grade-Tracker

# Run the setup script (automatically installs everything)
bash setup.sh

# Or manually:
npm install
npm install -g expo-cli eas-cli
eas login
```

## Step 2: Add Your Claude API Key

You need to set up your Anthropic API key for the syllabus parsing feature.

**Option A: Environment Variable (Recommended)**
```bash
export ANTHROPIC_API_KEY="your-api-key-here"
```

**Option B: Add to app.json**
Edit `app.json` and add under `"expo"`:
```json
"extra": {
  "anthropicApiKey": "your-api-key-here"
}
```

## Step 3: Test Locally (Optional)

Test the app before building for mobile:

```bash
# Start development server with Expo
expo start

# On your phone:
# - Download "Expo Go" app from App Store or Google Play
# - Scan the QR code shown in your terminal
# - The app will load on your phone
```

## Step 4: Build for iOS

```bash
eas build --platform ios
```

**What happens:**
- Expo builds your app in the cloud
- Takes 15-30 minutes
- You'll get a link to download the `.ipa` file
- Install on iPhone using Xcode or directly on device

**To install on your iPhone:**
1. Download the `.ipa` file
2. Use Xcode: `xcode-select --install` then drag `.ipa` into Devices
3. Or use Apple Configurator 2 (easier for non-developers)

## Step 5: Build for Android

```bash
eas build --platform android
```

**What happens:**
- Expo builds your app in the cloud
- Takes 15-30 minutes
- You'll get a link to download the `.apk` file
- Install directly on Android devices

**To install on your Android phone:**
1. Download the `.apk` file
2. Transfer it to your phone
3. Open file manager on phone and tap the `.apk` file
4. Tap "Install" when prompted
5. Enable "Unknown Sources" if needed (Settings > Security)

## Step 6: Distribute to App Stores (Optional)

**For Apple App Store:**
- Requires Apple Developer account ($99/year)
- Follow: https://expo.dev/submit/ios

**For Google Play Store:**
- Requires Google Developer account ($25 one-time)
- Follow: https://expo.dev/submit/android

## Troubleshooting

**"eas: command not found"**
```bash
npm install -g eas-cli
eas login
```

**"Error: Not authenticated"**
```bash
eas logout
eas login
# Use your Expo credentials
```

**Build failed**
1. Check your API key is correct
2. Run `eas build --platform ios --clear-cache`
3. Check logs at https://expo.dev/builds

**App won't install**
- Make sure you downloaded the right file type (`.ipa` for iOS, `.apk` for Android)
- Clear old versions: Settings > Apps > Grade Tracker > Uninstall

## Next Steps

Once you have your `.ipa` or `.apk`:
1. Share with friends
2. Submit to App Stores if you want
3. Keep updating with new features

Good luck! 🎓
