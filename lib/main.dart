import 'package:flutter/material.dart';
import 'package:my_plant_app/ui/onboarding_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Onboarding Screen",
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}