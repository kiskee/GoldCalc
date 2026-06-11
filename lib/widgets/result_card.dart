import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double lotaje;
  const ResultCard({super.key, required this.lotaje});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final styles = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimaryContainer,
      fontWeight: FontWeight.bold,
    );
    return Container(
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.colorScheme.outline, width: 4),
      ),
      child: Column(
        children: [
          Text("Lotaje Calculado:", style: styles.copyWith(fontSize: 25)),
          Text(
            lotaje.toStringAsFixed(2),
            style: styles.copyWith(
              fontSize: theme.textTheme.displaySmall?.fontSize,
            ),
          ),
          Text("Lotes", style: styles),
        ],
      ),
    );
  }
}
