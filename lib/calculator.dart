import 'package:calculator/constants.dart';
import 'package:calculator/provider.dart';
import 'package:calculator/widgets/buttonpad_left.dart';
import 'package:calculator/widgets/buttonpad_right.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    final provider = context.watch<CalculatorProvider>();
    return Scaffold(
      backgroundColor: dark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                width: mediaSize.width,
                height: mediaSize.height / 3,
                child: Column(
                  children: [
                    // SizedBox(
                    //   width: mediaSize.width,
                    //   height: (mediaSize.height / 3) / 2,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     crossAxisAlignment: CrossAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         provider.calcul,
                    //         style: const TextStyle(
                    //             fontSize: 20, color: Colors.white),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      width: mediaSize.width,
                      height: (mediaSize.height / 3) / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            provider.calcul,
                            style: const TextStyle(
                                fontSize: 50, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: mediaSize.width * .75 - 10,
                      child: ButtonPadLeft(),
                    ),
                    SizedBox(
                      width: mediaSize.width * .25 - 10,
                      child: ButtonPadRight(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
