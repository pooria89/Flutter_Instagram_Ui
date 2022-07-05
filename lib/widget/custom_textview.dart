import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  final String? text;
  final String? fontFamily;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final VoidCallback? onClick;

  CustomTextView(
      {required this.text,
      this.size,
      this.fontWeight,
      this.color,
      this.wordSpacing,
      this.onClick,
      this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
        text!,
              style: TextStyle(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: color,
                  wordSpacing: wordSpacing,
                  fontFamily: fontFamily),
            )
          : TextButton(
              onPressed: () {
                onClick?.call();
              },
              child: Text(
                text!,
                style: TextStyle(
                    fontSize: size,
                    fontWeight: fontWeight,
                    color: color,
                    wordSpacing: wordSpacing,
                    fontFamily: fontFamily),
              ),
            ),
    );
  }
}
