import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _step = 0;

  @override
  Widget build(BuildContext context) {
    List<Step> _steps = [
      Step(
        isActive: _step == 0,
        title: Text("Decision"),
        content: Text("Decide what you want to do with your life"),
      ),
      Step(
        isActive: _step == 1,
        title: Text("Resolution"),
        content: Text("Resolve in yourself that you'll do whatever it is"),
      ),
      Step(
        isActive: _step == 2,
        title: Text("Action"),
        content: Text("Take conscious actions in line with what you want"),
      ),
      Step(
          isActive: _step == 3,
          title: Text("Stay Positive"),
          content: Text("Let go of negative Energy"))
    ];

    return Container(
        child: Stepper(
      onStepCancel: () {
        setState(() {
          _step = _step == 0 ? _step : _step - 1;
        });
      },
      onStepTapped: (value) {
        setState(() {
          _step = value;
        });
      },
      onStepContinue: () {
        setState(() {
          _step = _step == _steps.length - 1 ? _step : _step + 1;
        });
      },
      currentStep: _step,
      steps: _steps,
    ));
  }
}
