// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const ACTION = Colors.lightBlueAccent;
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromARGB(255, 6, 20, 179);

  final String text;
  final bool len;
  final Color color;
  final void Function(String) call;

  Button({
    required this.text,
    this.len = false,
    this.color = DEFAULT,
    required this.call,
  });

  Button.operation({
    required this.text,
    this.len = false,
    this.color = OPERATION,
    required this.call,
  });
  Button.action({
    required this.text,
    this.len = false,
    this.color = ACTION,
    required this.call,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: len ? 2 : 1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60))),
            onPressed: () => call(text),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
            )));
  }
}
