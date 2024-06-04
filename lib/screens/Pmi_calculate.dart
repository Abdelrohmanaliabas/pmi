import 'package:flutter/material.dart';

class Result_Pmi extends StatelessWidget {
  final int age;
  final bool isMale;
  final double wight;
  final double h;

  Result_Pmi({
    required this.age,
    required this.isMale,
    required this.wight,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isMale ? Colors.blue : Colors.pink,
        title: Center(
            child: Text(
          'BMI Result     ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: isMale ? Colors.blue.shade700 : Colors.pink.shade700,
          ),
        )),
      ),
      body: Center(
        child: Container(
          color: isMale
              ? Colors.blue.withOpacity(0.3)
              : Colors.pink.withOpacity(0.3),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    'Wight',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    'BMI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    ' : ',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    ' : ',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    ' : ',
                    style: TextStyle(
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isMale ? 'Man' : 'women',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    '${wight.round()}   ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                  Text(
                    '${isMale ? (wight * 10 + h * 6.25 - age * 5 + 5).round() : (wight * 10 + h * 6.25 - age * 5 - 161).round()}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: isMale ? Colors.blue : Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
