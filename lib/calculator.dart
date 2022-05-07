import 'package:calculator/constants/color.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double? first;
  double? second;
  String history = '';
  String displayText = '';
  String res = '';
  String equation = '';

  buttonPress(String buttonText) {
    if (buttonText == 'C') {
      displayText = '';
      res = '';
      equation = '';
      first = 0;
      second = 0;
    } else if (buttonText == 'AC') {
      displayText = '';
      res = '';
      equation = '';
      first = 0;
      second = 0;
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'X' ||
        buttonText == '/') {
      first = double.parse(displayText);
      res = '';
      equation = buttonText;
    } else if (buttonText == '=') {
      second = double.parse(displayText);
      if (equation == '+') {
        res = (first! + second!).toStringAsFixed(0);
      } else if (equation == '-') {
        res = (first! - second!).toStringAsFixed(0);
      } else if (equation == 'X') {
        res = (first! * second!).toStringAsFixed(0);
      } else if (equation == '/') {
        res = (first! / second!).toStringAsFixed(2);
      }
    } else if (buttonText == '<') {
      res = res.substring(0, res.length - 1);
      if (res == '') {
        res = '0';
      }
    } else if (buttonText == 'neg') {
      res = (-1 * int.parse(displayText)).toString();
    } else if (buttonText == '.') {
      res = (displayText + buttonText).toString();
    } else {
      res = int.parse(displayText + buttonText).toString();
    }

    setState(() {
      displayText = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.bg1,
      // appBar: AppBar(
      //   backgroundColor: MyColor.operators,
      //   title: const Text(
      //     'Calculator',
      //     style: TextStyle(fontSize: 40, color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   elevation: 6,
      // ),
      body: Column(
        children: [
          //History Data Show Tab
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: double.infinity,
            alignment: Alignment.bottomRight,
            height: 100,
            child: Text(
              history,
              style: const TextStyle(fontSize: 50, color: Colors.white54),
            ),
          ),
          const SizedBox(
            height: 60,
          ),

          //Current Data Calculation Place
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: double.infinity,
            alignment: Alignment.bottomRight,
            height: 100,
            child: Text(
              res,
              style: const TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),

          //Keypad of Calculator
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: MyColor.bg2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: [
                      //AC
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.delete,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('C'),
                        child: const Text('C'),
                      ),

                      //+/-
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.delete,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('AC'),
                        child: const Text('AC'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.delete,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('<'),
                        child: const Icon(Icons.backspace),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.operators,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('X'),
                        child: const Text('X'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('9'),
                        child: const Text('9'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('8'),
                        child: const Text('8'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('7'),
                        child: const Text('7'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.operators,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('/'),
                        child: const Text('/'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('6'),
                        child: const Text('6'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('5'),
                        child: const Text('5'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('4'),
                        child: const Text('4'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.operators,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        child: const Icon(Icons.remove),
                        onPressed: () => buttonPress('-'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('3'),
                        child: const Text('3'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('2'),
                        child: const Text('2'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('1'),
                        child: const Text('1'),
                      ),

                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.operators,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('+'),
                        child: const Text('+'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('0'),
                        child: const Text('0'),
                      ),
                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('.'),
                        child: const Text('.'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MyColor.number,
                            onPrimary: Colors.black,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('neg'),
                        child: const Text('+/-'),
                      ),
                      //
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade400,
                            textStyle: const TextStyle(fontSize: 24),
                            shape: const CircleBorder()),
                        onPressed: () => buttonPress('='),
                        child: const Text('='),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
