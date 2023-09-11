import 'package:flutter/material.dart';
import 'package:ticket/const/cosnt.dart';

class SpButton extends StatelessWidget {
  const SpButton({super.key, required this.khdam, required this.buttonText});
  final Function()? khdam;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: khdam,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: const Color(0xD91130CE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(buttonText,
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            )));
  }
}
