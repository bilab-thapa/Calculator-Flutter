import 'package:flutter/material.dart';

class Calculators extends StatefulWidget {
  const Calculators({Key? key}) : super(key: key);

  @override
  State<Calculators> createState() => _CalculatorsState();
}

class _CalculatorsState extends State<Calculators> {
  int? firstnum;
  int? secondnum;
  String textToDisplay = '';
  String? res;
  String? btnValue;
  String? operatorVal;

  _btnClick(btnValue) {
    if (btnValue == 'C') {
      textToDisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstnum = int.parse(textToDisplay);
      res = '';
      operatorVal = btnValue;
    } else if (btnValue == '=') {
      secondnum = int.parse(textToDisplay);
      if (operatorVal == '+') {
        res = (firstnum! + secondnum!).toString();
      } else if (operatorVal == '-') {
        res = (firstnum! - secondnum!).toString();
      } else if (operatorVal == 'X') {
        res = (firstnum! * secondnum!).toString();
      } else if (operatorVal == '/') {
        res = (firstnum! / secondnum!).toString();
      }
    }
    setState(() {
      textToDisplay = res!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange.shade400,
          centerTitle: true,
          title: const Text('Calculator App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        textToDisplay,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 500,
                      child: Center(
                        child: GridView.count(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 4,
                          crossAxisSpacing: 9,
                          mainAxisSpacing: 9,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFD4D4D2),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                'AC',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFD4D4D2),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '+/-',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFD4D4D2),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '%',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFFF9500),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '/',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '9',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '8',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '7',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFFF9500),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                'X',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '6',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '4',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFFF9500),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () => _btnClick(btnValue),
                              child: const Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFFFF9500),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 34),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 34),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: const Color(0XFF505050),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 34),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                primary: Colors.red.shade400,
                              ),
                              onPressed: () {},
                              child: const Text(
                                '<',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 34),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  primary: Colors.green),
                              onPressed: () {},
                              child: const Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 34),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
