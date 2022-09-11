// ignore_for_file: deprecated_member_use


import 'package:expo/widgets/bottom_navigation_bar.dart';
import 'package:expo/widgets/drawer.dart';
import 'package:expo/widgets/flat_button.dart';
import 'package:expo/widgets/floating_action_button.dart';
import 'package:expo/widgets/raised_button.dart';
import 'package:expo/widgets/alert.dart';
import 'package:flutter/material.dart';
import 'widgets/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String istapped = '';
  int _selectedIndex = 0;
  double _volume = 0.0;
  String textField = '';

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: const MyDrawer(),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyTextField(myController: myController),
              Text("$_volume, $textField"),
              MyRaisedButton(
                dialog: dialogS,
              ),
              const MyFlatButton(),
              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    _volume += 10;
                  });
                },
              ),
            ],
          ),
        )),
        bottomNavigationBar: MyBottomNavigationBar(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
        floatingActionButton: MyFloatingActionButton(
          state: () {
            setState(() {
              textField = myController.text;
            });
          },
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  dialogS() {
    return showDialog(
      context: context,
      builder: (context) {
        return const MyDialog();
      },
    );
  }
}
