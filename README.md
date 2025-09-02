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

![WhatsApp Image 2025-09-02 at 05 59 47](https://github.com/user-attachments/assets/7db0cc01-8967-4fb6-9ffa-540ae40c1823)



📌 Roadmap

✅ Basic compass widget

🔲 Add themes and customization options

🔲 Support for map integration

🔲 Calibration support



🛠️ Contributing

Contributions are welcome!

Feel free to open issues and submit pull requests.



📄 License

This project is licensed under the MIT License – see the LICENSE file for details.
