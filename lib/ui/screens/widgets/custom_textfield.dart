
import 'package:flutter/material.dart';
import 'package:my_plant_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  
  const CustomTextField({
    super.key, required this.icon, required this.obscureText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.blackColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(icon, color: Constants.blackColor03,),
        hintText: hintText,
        hintStyle: TextStyle(color: Constants.blackColor03, fontWeight: FontWeight.bold),
    
      ),
      cursorColor: Constants.blackColor03,
    );
  }
}
