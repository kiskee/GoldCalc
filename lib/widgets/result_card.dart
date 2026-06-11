import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double lotaje;
  final TextStyle styles;
  const ResultCard({super.key, required this.lotaje, required this.styles});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber[600],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 4),
      ),
      child: Column(
        children: [
          Text("Lotaje Calculado:", style: styles.copyWith(fontSize: 25)),
          Text(
            lotaje.toStringAsFixed(2),
            style: styles.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
            ),
          ),
          Text("Lotes", style: styles.copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}
