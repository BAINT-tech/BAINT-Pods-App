import 'package:flutter/material.dart';

class EqScreen extends StatefulWidget {
  const EqScreen({super.key});

  @override
  State<EqScreen> createState() => _EqScreenState();
}

class _EqScreenState extends State<EqScreen> {
  double bass = 50;
  double mid = 50;
  double treble = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EQ Settings')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _slider('Bass', bass, (v) => setState(() => bass = v)),
            _slider('Mid', mid, (v) => setState(() => mid = v)),
            _slider('Treble', treble, (v) => setState(() => treble = v)),
          ],
        ),
      ),
    );
  }

  Widget _slider(String label, double value, ValueChanged<double> onChanged) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Slider(
          value: value,
          min: 0,
          max: 100,
          divisions: 20,
          label: value.round().toString(),
          onChanged: onChanged,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
