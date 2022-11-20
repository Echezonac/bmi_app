import 'package:flutter/material.dart';
import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.buttonTitle, required this.tapAction});
  final String buttonTitle;
  final VoidCallback tapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapAction,
      child: Container(
        color: kPinkColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kTextDesign,
          ),
        ),
      ),
    );
  }
}
