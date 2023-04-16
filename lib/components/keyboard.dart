// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) call;

  const Keyboard(
    this.call,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.action(
              text: 'AC',
              len: true,
              call: call,
            ),
            Button.action(
              text: '%',
              call: call,
            ),
            Button.operation(
              text: '/',
              call: call,
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          ButtonRow([
            Button(
              text: '7',
              call: call,
            ),
            Button(
              text: '8',
              call: call,
            ),
            Button(
              text: '9',
              call: call,
            ),
            Button.operation(
              text: 'x',
              call: call,
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          ButtonRow([
            Button(
              text: '4',
              call: call,
            ),
            Button(
              text: '5',
              call: call,
            ),
            Button(
              text: '6',
              call: call,
            ),
            Button.operation(
              text: '-',
              call: call,
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          ButtonRow([
            Button(
              text: '1',
              call: call,
            ),
            Button(
              text: '2',
              call: call,
            ),
            Button(
              text: '3',
              call: call,
            ),
            Button.operation(
              text: '+',
              call: call,
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          ButtonRow([
            Button(
              text: '0',
              len: true,
              call: call,
            ),
            Button(
              text: '.',
              call: call,
            ),
            Button.operation(
              text: '=',
              call: call,
            ),
          ]),
        ],
      ),
    );
  }
}
