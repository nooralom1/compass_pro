📍 Compass Pro
A simple and customizable Flutter compass package built on top of flutter_compass.
It provides a smooth compass widget with real-time device orientation support.



🚀 Features
🔄 Real-time compass heading updates
🎨 Customizable UI (icons, styles, and layouts)
📡 Built with flutter_compass, geolocator, and geocoding
🧭 Lightweight & easy to use



📦 Installation
Add this to your pubspec.yaml:
dependencies:
  compass_pro: ^0.0.1



Then run:
flutter pub get



⚡ Usage
import 'package:compass_pro/compass_pro.dart';
class CompassExample extends StatelessWidget {
  const CompassExample({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CompassPro(),
      ),
    );
  }
}



🖼️ Example UI
(Add a screenshot/gif of your compass widget here)


📌 Roadmap
✅ Basic compass widget
🔲 Add themes and customization options
🔲 Support for map integration
🔲 Calibration support


🛠️ Contributing
Contributions are welcome!
Feel free to open issues and submit pull requests.


📄 License
This project is licensed under the MIT License – see the LICENSE
 file for details.