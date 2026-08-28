#!/bin/bash

# Grade Tracker Setup & Build Script
# This script guides you through building the mobile app

echo "🎓 Grade Tracker - Mobile App Setup"
echo "===================================="
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Install from https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js found: $(node --version)"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "❌ npm install failed"
    exit 1
fi

echo "✅ Dependencies installed"
echo ""

# Install global CLI tools
echo "📦 Installing Expo CLI and EAS CLI (global)..."
npm install -g expo-cli eas-cli

echo "✅ CLI tools installed"
echo ""

# Check if user is logged in to Expo
echo "🔐 Checking Expo login..."
if ! expo whoami &> /dev/null; then
    echo "⚠️  Not logged in to Expo. Run:"
    echo ""
    echo "  eas login"
    echo ""
    echo "Then create an account at https://expo.dev (it's free!)"
else
    echo "✅ Logged in to Expo"
fi

echo ""
echo "===================================="
echo "🚀 Ready to build!"
echo ""
echo "For iOS:"
echo "  eas build --platform ios"
echo ""
echo "For Android:"
echo "  eas build --platform android"
echo ""
echo "For development (Expo Go):"
echo "  expo start"
echo ""
