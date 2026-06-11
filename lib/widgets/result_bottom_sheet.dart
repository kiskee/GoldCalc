import 'package:flutter/material.dart';
import '../constants.dart';

class ResultBottomSheet extends StatelessWidget {
  final double lotaje;

  const ResultBottomSheet({super.key, required this.lotaje});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final styles = theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimaryContainer,
      fontWeight: FontWeight.bold,
    );
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.3,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text(appTitle, style: styles.copyWith(fontSize: 18)),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: theme.colorScheme.outline, width: 2),
            ),
            child: Column(
              children: [
                Text("Lotaje Calculado:", style: styles.copyWith(fontSize: 22)),
                const SizedBox(height: 8),
                Text(
                  lotaje.toStringAsFixed(2),
                  style: styles.copyWith(
                    fontSize: theme.textTheme.displaySmall?.fontSize,
                  ),
                ),
                const SizedBox(height: 4),
                Text("Lotes", style: styles.copyWith(fontSize: 14)),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Cerrar", style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
