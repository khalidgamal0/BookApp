import 'package:flutter/material.dart';

import '../styles.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {required this.backGroundColor,
        required this.text,
        required this.textColor,
        this.borderRadius,
        this.onPressed,
      super.key});

  Color backGroundColor;
  final Color textColor;
  BorderRadius? borderRadius;
  String text;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor:backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius?? BorderRadius.circular(
                16,
              ),
            )),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
