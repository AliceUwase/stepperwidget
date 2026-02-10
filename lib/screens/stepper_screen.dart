import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

int _currentStep = 0;

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Example')),
      body: Stepper(
        type: StepperType.horizontal,
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < 4) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        steps: [
          Step(
            title: Text('Step 1'),
            content: Text('Complete this first step'),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: Text('Step 2'),
            content: Text('Complete this  second step'),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: Text('Step 3'),
            content: Text('Complete this  third step '),
            isActive: _currentStep >= 2,
          ),
          Step(
            title: Text('Step 4'),
            content: Text('Complete this  fourth step '),
            isActive: _currentStep >= 3,
          ),
          Step(
            title: Text('Step 5'),
            content: Text('Complete this  fifth step '),
            isActive: _currentStep >= 4,
          ),
        ],
      ),
    );
  }
}
