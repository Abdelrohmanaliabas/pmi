import 'package:flutter/material.dart';
import 'package:pmi/screens/Pmi_calculate.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});
  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  double h = 120;
  int age = 16;
  double wight = 70;
  Color colorMen = Colors.blue;
  Color colorWomen = Colors.pink;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isMale ? colorMen : colorWomen,
        title: const Center(
          child: Text(
            'BMI',
            style: TextStyle(
              fontFamily: AutofillHints.middleName,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        isMale = true;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: isMale ? colorMen : Colors.grey,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/Person_icon_BLACK-01.svg.png',
                              width: 120,
                            ),
                            const Text(
                              'MAN',
                              style: TextStyle(fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        isMale = false;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: isMale ? Colors.grey : colorWomen,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/free-woman-female-person-avatar-user-31835.webp',
                              width: 120,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              'WOMEN',
                              style: TextStyle(fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: isMale ? colorMen : colorWomen,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HIGHT',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${h.round()}',
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Slider(
                        value: h,
                        max: 210,
                        min: 120,
                        onChanged: (value) {
                          h = value;
                          setState(() {});
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: isMale ? colorMen : colorWomen,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Wight',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${wight.round()} ',
                            style: const TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'Wight_min',
                                onPressed: () {
                                  wight--;
                                  setState(() {});
                                },
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              FloatingActionButton(
                                heroTag: 'Wight_max',
                                onPressed: () {
                                  setState(() {});

                                  wight++;
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: isMale ? colorMen : colorWomen,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: 'Age_min',
                                onPressed: () {
                                  age--;
                                  setState(() {});
                                },
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              FloatingActionButton(
                                heroTag: 'age_add',
                                onPressed: () {
                                  age++;
                                  setState(() {});
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: isMale
                ? colorMen.withOpacity(0.7)
                : colorWomen.withOpacity(0.7),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result_Pmi(
                            age: age,
                            wight: wight,
                            h: h,
                            isMale: isMale,
                          )),
                );
              },
              textColor: Colors.black,
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
