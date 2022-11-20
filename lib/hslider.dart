import 'package:flutter/material.dart';
import 'package:bmi_app/constant.dart';

class HSlider extends StatefulWidget {
  const HSlider({Key? key}) : super(key: key);

  @override
  State<HSlider> createState() => _HSliderState();
}

class _HSliderState extends State<HSlider> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          inactiveTrackColor: kLightShade,
          activeTrackColor: Colors.white,
          thumbColor: kPinkColor,
          overlayColor: kShadowColor,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0)
      ),
      child: Slider(
          value:kHeight.toDouble() ,
          min: 120.0,
          max: 220.0,
          onChanged: (double newHeight){
            setState(() {
              kHeight = newHeight.round();
            });
          }),
    );
  }
}



class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.icon, required this.onPress}) : super(key: key);
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(width: 56.0,height: 56.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
      child: Icon(icon),
    );
  }
}



