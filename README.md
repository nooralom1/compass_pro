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
  compass_pro: ^1.0.0
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

## 📦 Example

```dart
import 'package:compass_pro/compass_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CompassExampleApp());
}

class CompassExampleApp extends StatelessWidget {
  const CompassExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Compass Pro Example')),
        body: const Center(
          child: CompassPro(),
        ),
      ),
    );
  }
}
```

---

## 📷 Screenshots
<p align="center">
  <img src="https://raw.githubusercontent.com/nooralom1/compass_pro/refs/heads/main/asset/example.jpeg?token=GHSAT0AAAAAADCMNBRMKWIKATGVFMFBSFSS2F7OSEA" width="300" />
</p>



👨‍💻 Developed By
<p align="center"> <img src="https://avatars.githubusercontent.com/u/132379427?v=4" width="120" height="120" style="border-radius:50%" /> </p> <h3 align="center">Md. Noor-Alom Siddik</h3> <p align="center"> <a href="https://github.com/nooralom1"> <img src="https://img.shields.io/badge/GitHub-mdabdullahalsiddik-black?logo=github" /> </a> <a href="mailto:mailto:noor418534@gmail.com"> <img src="https://img.shields.io/badge/Email-mdabdullahalsiddik.dev%40gmail.com-red?logo=gmail" /> </a> </p>


## 💡 Contributing

Contributions are welcome!

1. Fork the repo
2. Create your feature branch
3. Commit your changes
4. Open a Pull Request

---

## ❤️ Support

If you like this package, give it a ⭐ on [pub.dev](https://pub.dev/packages/compass_pro) and share it!
