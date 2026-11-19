#!/usr/bin/env bash
# puzzlenetdesk: restore binary assets that cannot live in this repo's text-only
# snapshot. Downloads the exact upstream RustDesk 1.5.1 files from
# rustdesk/rustdesk @ 23e5bb471a040d62f0a6ad52591fb30784265b73.
# Runs in CI right after checkout, before any build step.
set -euo pipefail
BASE="https://raw.githubusercontent.com/rustdesk/rustdesk/23e5bb471a040d62f0a6ad52591fb30784265b73"
cd "$(dirname "$0")/../.."
while IFS= read -r f; do
  [ -n "$f" ] || continue
  mkdir -p "$(dirname "$f")"
  curl -fsSL --retry 3 -o "$f" "$BASE/$f"
  [ -s "$f" ] || { echo "empty download: $f" >&2; exit 1; }
done <<'FILES'
fastlane/metadata/android/en-US/images/icon.png
fastlane/metadata/android/en-US/images/phoneScreenshots/1.png
fastlane/metadata/android/en-US/images/phoneScreenshots/2.png
fastlane/metadata/android/en-US/images/phoneScreenshots/3.png
fastlane/metadata/android/en-US/images/phoneScreenshots/4.png
fastlane/metadata/android/en-US/images/sevenInchScreenshots/5.png
fastlane/metadata/android/en-US/images/sevenInchScreenshots/6.png
fastlane/metadata/android/en-US/images/sevenInchScreenshots/7.png
fastlane/metadata/android/en-US/images/sevenInchScreenshots/8.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_stat_logo.png
flutter/assets/address_book.ttf
flutter/assets/device_group.ttf
flutter/assets/gestures.ttf
flutter/assets/more.ttf
flutter/assets/peer_searchbar.ttf
flutter/assets/scam.png
flutter/assets/tabbar.ttf
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png
flutter/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png
flutter/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png
flutter/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png
flutter/ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png
flutter/macos/Runner/AppIcon.icns
flutter/windows/runner/resources/app_icon.ico
libs/clipboard/docs/assets/scene3.png
libs/clipboard/docs/assets/win_A_B.png
libs/clipboard/docs/assets/win_B_A.png
libs/clipboard/src/platform/unix/macos/paste-files-macos.png
libs/portable/src/res/label.png
libs/portable/src/res/spin.gif
res/128x128.png
res/128x128@2x.png
res/32x32.png
res/64x64.png
res/icon.ico
res/icon.png
res/mac-icon.png
res/mac-tray-dark-x2.png
res/mac-tray-light-x2.png
res/tray-icon.ico
FILES
echo "binary assets restored"

# puzzlenetdesk brand assets: our own logo/icons, downloaded from our own site.
# These run AFTER the upstream restores above, so they override the RustDesk
# files of the same path (icons, tray icon, launcher icons) and supply
# flutter/assets/*, which upstream does not ship. Generated locally from the
# PuzzleNet logo (see ~/workspace/puzzlenetdesk/brand/).
PUZZLE_BASE="https://puzzlenetdesk.ir/brand"
while IFS= read -r f; do
  [ -n "$f" ] || continue
  mkdir -p "$(dirname "$f")"
  curl -fsSL --retry 3 -o "$f" "$PUZZLE_BASE/$f"
  [ -s "$f" ] || { echo "empty download: $f" >&2; exit 1; }
done <<'PUZZLE_FILES'
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-hdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-hdpi/launch_image.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-mdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-mdpi/launch_image.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xhdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xhdpi/launch_image.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xxhdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xxhdpi/launch_image.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_foreground.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/ic_stat_logo.png
flutter/android/app/src/main/res/mipmap-xxxhdpi/launch_image.png
flutter/assets/icon.png
flutter/assets/logo.png
flutter/assets/logo_dark.png
flutter/assets/logo_light.png
flutter/windows/runner/resources/app_icon.ico
res/128x128.png
res/128x128@2x.png
res/32x32.png
res/64x64.png
res/icon.ico
res/icon.png
res/mac-icon.png
res/tray-icon.ico
PUZZLE_FILES
echo "puzzlenetdesk brand assets restored"
