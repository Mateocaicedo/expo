import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  
  final TextEditingController myController;
  
  const MyTextField({Key? key, required this.myController}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'One text',
      ),
    );
  }
}
