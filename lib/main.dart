
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prmaod_sod_home/view/visits/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Therapy",



      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),


      },
    );
  }
}
