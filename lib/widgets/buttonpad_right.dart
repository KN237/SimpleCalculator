import 'package:calculator/constants.dart';
import 'package:calculator/widgets/button_item.dart';
import 'package:flutter/material.dart';

class ButtonPadRight extends StatelessWidget {
  const ButtonPadRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FlexColumnWidth(),
      children: const [
        TableRow(
          children: [
            ButtonItem(
              text: '÷',
              color: yellow,
            ),
          ],
        ),
        TableRow(
          children: [
            ButtonItem(
              text: '×',
              color: yellow,
            ),
          ],
        ),
        TableRow(
          children: [
            ButtonItem(
              text: '-',
              color: yellow,
            ),
          ],
        ),
        TableRow(
          children: [
            ButtonItem(
              text: '+',
              color: yellow,
            ),
          ],
        ),
        TableRow(
          children: [
            ButtonItem(
              text: '=',
              color: yellow,
            ),
          ],
        ),
      ],
    );
  }
}
