import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  bool connected = false;
  int batteryLeft = 100;
  int batteryRight = 100;
  int batteryCase = 100;

  void toggleConnection() {
    setState(() {
      connected = !connected;
    });
  }

  void drainBattery() {
    setState(() {
      batteryLeft = batteryLeft > 0 ? batteryLeft - 5 : 0;
      batteryRight = batteryRight > 0 ? batteryRight - 5 : 0;
      batteryCase = batteryCase > 0 ? batteryCase - 5 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Status')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(connected ? Icons.headset : Icons.headset_off, size: 100),
            const SizedBox(height: 20),
            Text(
              'Connected: ${connected ? "YES" : "NO"}',
              style: const TextStyle(fontSize: 18),
            ),
            Text('Battery Left: $batteryLeft%'),
            Text('Battery Right: $batteryRight%'),
            Text('Case: $batteryCase%'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleConnection,
              child: Text(connected ? 'Disconnect' : 'Connect'),
            ),
            ElevatedButton(
              onPressed: drainBattery,
              child: const Text('Drain Battery (Simulate)'),
            ),
          ],
        ),
      ),
    );
  }
}
