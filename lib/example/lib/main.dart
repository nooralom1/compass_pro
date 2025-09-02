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
