import 'package:calculator/constants.dart';
import 'package:calculator/widgets/button_item.dart';
import 'package:flutter/material.dart';

class ButtonPadLeft extends StatelessWidget {
  const ButtonPadLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          defaultColumnWidth: const FlexColumnWidth(),
          children: const [
            TableRow(
              children: [
                ButtonItem(
                  text: 'C',
                  color: grey,
                ),
                ButtonItem(
                  text: '-/+',
                  color: grey,
                ),
                ButtonItem(
                  text: '%',
                  color: grey,
                ),
              ],
            ),
            TableRow(
              children: [
                ButtonItem(
                  text: '7',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '8',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '9',
                  color: darkGrey,
                ),
              ],
            ),
            TableRow(
              children: [
                ButtonItem(
                  text: '4',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '5',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '6',
                  color: darkGrey,
                ),
              ],
            ),
            TableRow(
              children: [
                ButtonItem(
                  text: '1',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '2',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '3',
                  color: darkGrey,
                ),
              ],
            ),
          ],
        ),
        Table(
          defaultColumnWidth: const FlexColumnWidth(),
          columnWidths: const {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(2),
          },
          children: const [
            TableRow(
              children: [
                ButtonItem(
                  text: '0',
                  color: darkGrey,
                ),
                ButtonItem(
                  text: '.',
                  color: darkGrey,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
