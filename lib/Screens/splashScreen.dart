import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/welcomeScreen.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer (const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const WelcomeScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AssetImage("assets/images/logo.png")),

            const SizedBox(height: 20,),

            CustomWidgets.CustomText(
                text: "WhatsApp",
                height: 18,
                fontweight: FontWeight.w700,
            )
          ],
        ),
      ),
    );
  }
}
