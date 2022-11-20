import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app/constant.dart';



class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color:kLightShade,size: 60.0,),
        const SizedBox(height: 15.0,),
        Text(label,style: kTextDesign,),
      ],
    );
  }
}