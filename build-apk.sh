#!/bin/bash

# Script de compilation APK local (sans EAS)
# Prerequis : Node.js, Java 17+, Android SDK

set -e

echo "Installation des dependances..."
npm install

echo "Generation des fichiers natifs Android..."
npx expo prebuild --platform android --clean

echo "Compilation de l APK (debug)..."
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "APK compile avec succes !"
echo "Fichier : android/app/build/outputs/apk/debug/app-debug.apk"
