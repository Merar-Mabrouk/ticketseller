import 'package:flutter/material.dart';

class Dotted extends StatelessWidget {
  const Dotted({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: LayoutBuilder(builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / 6).floor(),
            (index) => const SizedBox(
              width: 3,
              height: 1,
              child:
                  DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      }),
    );
  }
}
