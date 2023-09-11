import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/Component/size.dart';
import 'package:ticket/const/cosnt.dart';

class UsableWidget extends StatelessWidget {
  const UsableWidget({super.key, required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Screen.getWidth()*0.45,
      constraints: BoxConstraints(
          maxHeight: Screen.getHeight() * .5,
          maxWidth: Screen.getWidth() * 0.4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          constraints: const BoxConstraints(maxHeight: 220, maxWidth: 250),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                image: AssetImage('assets/click.jfif'), fit: BoxFit.cover),
          ),
        ),
        const Gap(15),
        Expanded(
            child: Text(
          msg,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: Styles.headLineStyle3,
        ))
      ]),
    );
  }
}
