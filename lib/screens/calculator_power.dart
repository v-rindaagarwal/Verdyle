import 'package:flutter/material.dart';

class ElectricityCalculator extends StatefulWidget {
  @override
  _ElectricityCalculatorState createState() => _ElectricityCalculatorState();
}

class _ElectricityCalculatorState extends State<ElectricityCalculator> {
  String location = "";
  double electricityCost = 0.0;
  double calculatedValue = 0.0;

  // Function to calculate the electricity cost based on the inputs and your algorithm.
  void calculateElectricityCost() {
    // Replace this with your specific calculation algorithm.
    // For example, we'll calculate it as a simple product of location and cost.
    setState(() {
      calculatedValue = location.isEmpty || electricityCost <= 0
          ? 0
          : location.length * electricityCost;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electricity Cost Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Location'),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Electricity Cost'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  electricityCost = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calculateElectricityCost,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16.0),
            Text('Calculated Value: $calculatedValue'),
          ],
        ),
      ),
    );
  }
}
