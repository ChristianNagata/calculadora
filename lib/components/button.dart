import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // ignore: constant_identifier_names
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  // ignore: constant_identifier_names
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  // ignore: constant_identifier_names
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    this.big = false,
    required this.text,
    this.color = DEFAULT,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    this.big = true,
    required this.text,
    this.color = DEFAULT,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    this.big = false,
    required this.text,
    this.color = OPERATION,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
