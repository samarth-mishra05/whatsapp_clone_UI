import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/homeScreen.dart';
import 'package:whatsapp_clone/Screens/loginScreen.dart';
import 'package:whatsapp_clone/Screens/profile.dart';
import 'package:whatsapp_clone/Screens/splashScreen.dart';
import 'package:whatsapp_clone/Screens/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        fontFamily: "Roboto",
        useMaterial3: false,
      ),
      home: HomeScreen()
    );
  }
}
