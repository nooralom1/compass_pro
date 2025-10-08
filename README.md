# Compass_Pro 🧭

A **Flutter widget** for displaying a **beautiful Compass** with customizable **icons, colors, styles**, and more.

---

## ✨ Features
* 🔄 Real-time compass heading updates
* 🎨 Customizable UI (icons, styles, and layouts)
* 📡 Built with flutter_compass, geolocator, and geocoding
* 🧭 Lightweight & easy to use

---

## 📦 Installation

Add the package to your **pubspec.yaml**:

```yaml
dependencies:
  compass_pro: ^1.0.9
```

Then run:

```bash
flutter pub get
```

Import the package:

```dart
import 'package:compass_pro/compass_pro.dart';
```
---

## 📦 Permissions

## For Android

Add this permissions to your **AndroidManifest.xml**:

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
```

## For iOS

Add this permissions to your **Info.plist**:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We use your location to show compass direction.</string>
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to your location to show compass direction.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>This app needs access to your location even when running in the background.</string>
```

Then run:

```bash
flutter clean
flutter pub get
flutter run
```

Import the package:

```dart
import 'package:compass_pro/compass_pro.dart';
```
---

## 📷 Screenshots
<p align="center">
  <img src="https://raw.githubusercontent.com/nooralom1/compass_pro/refs/heads/main/asset/example.jpeg" width="300" />
</p>



👨‍💻 Developed By
<p align="center"> <img src="https://lh3.googleusercontent.com/a/ACg8ocJ9044cDTIdpJn9ElpdYPeE_PeD7sDjC1WPvp77cGJmTzZXm0a6=s288-c-no" width="250" height="250" style="border-radius:50%" /> </p> <h3 align="center">Md. Noor-Alom Siddik</h3> <p align="center"> <a href="https://github.com/nooralom1"> <img src="https://img.shields.io/badge/GitHub-mdabdullahalsiddik-black?logo=github" /> </a> <a href="mailto:mailto:noor418534@gmail.com"> <img src="https://img.shields.io/badge/Email-mdabdullahalsiddik.dev%40gmail.com-red?logo=gmail" /> </a> </p>


## 💡 Contributing

Contributions are welcome!

1. Fork the repo
2. Create your feature branch
3. Commit your changes
4. Open a Pull Request

---

## ❤️ Support

If you like this package, give it a ⭐ on [pub.dev](https://pub.dev/packages/compass_pro) and share it!
