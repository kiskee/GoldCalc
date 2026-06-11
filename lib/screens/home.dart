import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/input_form.dart';
import '../widgets/calculate_button.dart';
import '../widgets/result_bottom_sheet.dart';


class Propin extends StatefulWidget {
  const Propin({super.key});

  @override
  State<Propin> createState() => _PropinState();
}

class _PropinState extends State<Propin> {
  double _calcularLotaje(double stopLoss, double riesgo) {
    if (stopLoss == 0) return 0;
    final lotaje = riesgo / stopLoss;
    return (lotaje * 100).round() / 100.0;
  }

  final stopLossController = TextEditingController();
  final riskController = TextEditingController();

  void _clearFields() {
    stopLossController.clear();
    riskController.clear();
  }

  @override
  void dispose() {
    stopLossController.dispose();
    riskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBari(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputForm(
                riskController: riskController,
                stopLossController: stopLossController,
              ),
              CalculateButton(
                onPressed: () {
                  final stopLoss =
                      double.tryParse(stopLossController.text) ?? 0;
                  final riesgo = double.tryParse(riskController.text) ?? 0;
                  final result = _calcularLotaje(stopLoss, riesgo);
                  showModalBottomSheet(
                    context: context,
                    builder: (_) => ResultBottomSheet(lotaje: result),
                  ).then((_) => _clearFields());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}