
import 'package:flutter/material.dart';

class Deco extends StatelessWidget {
  const Deco({super.key, required this.thn});
  final Color thn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: thn,width: 2.5)
      ),
    );
  }
}