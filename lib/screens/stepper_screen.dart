import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

// keep track of the current step index
int _currentStep = 0;

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Example')),
      // Stepper widget to display the steps
      body: Stepper(
        // type: StepperType.horizontal,
        // indicates the current step index
        currentStep: _currentStep,
        // triggered when the user taps the "Continue" button to go to the next step
        onStepContinue: () {
          if (_currentStep < 4) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        // triggered when the user taps the "Cancel" button to go back to the previous step
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        // defines the steps with title, content, and active state
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
        ],
      ),
    );
  }
}
