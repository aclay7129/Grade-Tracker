# Grade Tracker

A beautiful, functional grade tracking app that reads your college syllabus and automatically extracts grading categories. Track your grades with ease, customize weights, handle drop-lowest rules, and see exactly where you stand.

## Features

- 📚 **Syllabus Parser** — Upload your PDF or paste syllabus text; AI extracts grading breakdown automatically
- 📊 **Smart Grading** — Supports simple grades, drop-lowest rules, and best-of-two exam weights
- 🎯 **Grade Projections** — See your current average and what you need on remaining work
- 📱 **Multi-platform** — Runs on web, iOS, and Android
- 🎨 **Customizable** — Pick colors and icons for each class
- 💾 **Persistent Storage** — Your data is saved locally on your device

## Quick Start

### Web

```bash
npm install
npm run web
```

Then open [http://localhost:3000](http://localhost:3000) in your browser.

### Mobile (iOS/Android)

First, install dependencies:
```bash
npm install
npm install -g expo-cli eas-cli
```

Then:

**For development (via Expo Go app):**
```bash
expo start
# Scan the QR code with Expo Go on your phone
```

**For production builds:**

1. **Create an Expo account** (free) at https://expo.dev

2. **Log in via CLI:**
   ```bash
   eas login
   ```

3. **Build for iOS:**
   ```bash
   eas build --platform ios
   ```
   - This creates a `.ipa` file you can download and install on your iPhone

4. **Build for Android:**
   ```bash
   eas build --platform android
   ```
   - This creates an `.apk` file you can download and install on Android devices

The builds will complete in ~15-30 minutes. You'll get a download link in your terminal.

## How to Use

1. **Add a class** — Give it a name, credits, and optionally upload your syllabus
2. **AI extraction** — The app reads your syllabus and auto-fills grading categories
3. **Log grades** — Enter scores as you receive them
4. **Track progress** — See your current average, letter grade, and GPA across all classes
5. **Project ahead** — Figure out what you need on remaining work to hit a target grade

## Grading Rules

- **Simple** — A single category with one grade
- **Drop Lowest** — Multiple assignments where your lowest scores are dropped (e.g. "drop your 2 lowest quiz scores")
- **Best of Two** — Two major exams where only the higher one counts fully, the lower one counts less (e.g. midterm vs. final)

## Storage

Your data is stored locally on your device using:
- **Web**: Browser localStorage
- **iOS/Android**: Secure device storage (via Expo SecureStore)

Nothing is sent to any server except when you upload a syllabus PDF for AI parsing.

## Development

This project uses:
- **React 18** — UI framework
- **Expo** — Cross-platform mobile
- **Anthropic Claude API** — Syllabus parsing
- **Lucide Icons** — Beautiful icon library

## License

MIT
