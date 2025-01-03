import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';

var activeDiceImage = 'assets/images/dice-1.png';

//widget class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// state class
class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      var diceRoll = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const StyledText(
            "Roll Dice",
          ),
        )
      ],
    );
  }
}
