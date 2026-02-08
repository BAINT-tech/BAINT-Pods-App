import 'package:flutter/material.dart';
import 'eq_screen.dart';
import 'security_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BAINT Pods')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EqScreen()),
              ),
              child: const Text('Sound Equalizer'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SecurityScreen()),
              ),
              child: const Text('Pods Lock (Security)'),
            ),
          ],
        ),
      ),
    );
  }
}
