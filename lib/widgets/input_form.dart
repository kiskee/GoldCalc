import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final TextEditingController stopLossController;
  final TextEditingController riskController;
  const InputForm({super.key, required this.stopLossController, required this.riskController});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Calculadora ORO Rentable",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: stopLossController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Icon(Icons.account_balance_outlined),
                          labelText: "Stop Loss (PIPS)",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        controller: riskController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          prefixIcon: Icon(Icons.attach_money),
                          labelText: "Riesgo (USD)",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              );
  }
}