import 'package:calculator/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonItem extends StatefulWidget {
  const ButtonItem({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;

  @override
  State<ButtonItem> createState() => _ButtonItemState();
}

class _ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<CalculatorProvider>();
    return GestureDetector(
      onTap: () {
        provider.add(widget.text, widget.color);
      },
      child: Container(
        width: widget.text != '0' ? 75 : 160,
        height: 75,
        padding: EdgeInsets.zero,
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          shape: widget.text != '0' ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: widget.text != '0' ? null : BorderRadius.circular(40),
          color: widget.color,
        ),
        child: Padding(
          padding: widget.text != '0'
              ? EdgeInsets.zero
              : const EdgeInsets.only(left: 30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: widget.text != '0'
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                    fontSize: 25,
                    color: widget.color == const Color(0XFFA5A5A5)
                        ? Colors.black
                        : Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
