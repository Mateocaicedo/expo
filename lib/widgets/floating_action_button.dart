import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {

  final state;
  const MyFloatingActionButton({ Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
        onPressed: state,
        tooltip: 'TextField',
        child: const Icon(Icons.add),
      );
  }
}