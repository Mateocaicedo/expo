// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  const MyFlatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.red,
      // color: Colors.blue,
      // textColor: Colors.white,
      onPressed: () {},
      child: const Text(
        'FLAT BUTTON',
      ),
    );
  }
}
