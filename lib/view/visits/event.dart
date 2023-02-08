import 'package:flutter/material.dart';

class Event1 extends StatefulWidget {
  const Event1({Key? key}) : super(key: key);

  @override
  State<Event1> createState() => _Event1State();
}

class _Event1State extends State<Event1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Event"),
      ),
    );
  }
}
