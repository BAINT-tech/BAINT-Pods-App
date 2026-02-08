import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(const BaintPodsApp());
}

class BaintPodsApp extends StatelessWidget {
  const BaintPodsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BAINT Pods',
      debugShowCheckedModeBanner: false,
      theme: baintTheme,
      home: const SplashScreen(),
    );
  }
}
