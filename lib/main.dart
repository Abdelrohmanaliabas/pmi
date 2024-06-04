import 'package:flutter/material.dart';
import 'package:pmi/screens/page_screen.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageScreen(),
    );
  }
}
