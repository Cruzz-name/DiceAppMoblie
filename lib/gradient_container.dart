import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart';


var startAlignment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;
var color_1 = Color.fromARGB(255, 231, 71, 108);
var color_2 = Color.fromARGB(255, 236, 121, 165);


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2541724159.
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAligment,
              colors: [color_1, color_2])),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}


