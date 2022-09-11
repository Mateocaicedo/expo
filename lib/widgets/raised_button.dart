// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final  dialog;
  const MyRaisedButton({Key? key, required this.dialog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: const EdgeInsets.all(20),
      textColor: Colors.white,
      color: Colors.green,
      onPressed: dialog,
      child: const Text('Enabled Button'),
    );
  }

  
}
