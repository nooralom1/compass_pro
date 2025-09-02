Compass Pro

Compass Pro is a Flutter package that provides an accurate, smooth, and feature-rich compass experience. It leverages device sensors to detect orientation and provides location-based information, making it ideal for navigation, hiking, and outdoor apps.

Features

Real-time compass heading using device sensors.

Smooth and responsive needle animation.

Location integration (latitude, longitude) using GPS.

Supports both iOS and Android.

Easy-to-use API for seamless integration.

Optional customization for UI (needle color, background, size).

Installation

Add compass_pro to your pubspec.yaml:

dependencies:
  compass_pro: ^1.0.0


Then run:

flutter pub get

Usage
Basic Compass
import 'package:flutter/material.dart';
import 'package:compass_pro/compass_pro.dart';

class CompassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CompassPro(),
      ),
    );
  }
}