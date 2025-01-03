import 'package:flutter/material.dart';
import 'package:myapp/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        backgroundColor: Color.fromRGBO(243, 236, 248, 1),
        body: GradientContainer()),
  ));
}
