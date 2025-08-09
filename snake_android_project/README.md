# Snake Android (WebView)

This is a minimal Android app wrapping the Snake game (HTML/JS) in a WebView. It loads the game from `app/src/main/assets/www/index.html` and includes a GitHub Actions workflow that builds a **debug APK** you can install on your phone.

## How to get your APK (no local installs)

1. Create a **new GitHub repository** (public or private).
2. Download this project as a ZIP and upload all files to the repo (or drag-and-drop).
3. Go to **Actions** tab → enable workflows if prompted.
4. Run the workflow **Android APK (Debug)** → **Run workflow**.
5. Wait 2–5 minutes. Open the workflow run and download **app-debug.apk** from **Artifacts**.
6. Send the APK to your Android phone and install it (allow install from this source).

## Customize
- App name: change `app/src/main/res/values/strings.xml`.
- Package ID: change `applicationId` in `app/build.gradle` and the package in `MainActivity.java` + AndroidManifest.
- Orientation: adjust `android:screenOrientation` in `AndroidManifest.xml`.

## Notes
- This builds a **debug** APK. For release signing, add a keystore and configure `signingConfigs` in `app/build.gradle`.
- WebView uses local assets; no network needed.
