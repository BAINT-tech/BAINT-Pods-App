import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool locked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pods Lock')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              locked ? Icons.lock : Icons.lock_open,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              locked ? 'Pods are LOCKED' : 'Pods are UNLOCKED',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            SwitchListTile(
              title: const Text('Enable Pods Lock'),
              subtitle: const Text('Disable usage if taken without permission'),
              value: locked,
              onChanged: (v) {
                setState(() => locked = v);
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Firmware-level lock coming soon',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
