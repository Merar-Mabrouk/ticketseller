import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/Component/size.dart';
import 'package:ticket/const/cosnt.dart';

class SecondWid extends StatelessWidget {
  const SecondWid({super.key, required this.clr});
  final Color clr;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: Screen.getWidth() * 0.44,
                height: 210,
                padding: const EdgeInsets.all(15),
                constraints: BoxConstraints(maxWidth: Screen.getWidth() * 0.45),
                decoration: BoxDecoration(
                  color: clr,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey",
                          style: Styles.headLineStyle2.copyWith(color: white)),
                      const Gap(10),
                      Text(
                          "Take the survey about our services and get discount",
                          style: Styles.headLineStyle3.copyWith(
                              color: white,
                              // fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ]
                    //  Expanded(
                    //         child: RichText(
                    //           maxLines: 8,
                    //           text:
                    //         TextSpan(text: 'Discount \nfor survey\n',style: Styles.headLineStyle2.copyWith(color: white),
                    //         children: [
                    //           TextSpan(text:' \nTake the \nsurvey about \nour services \nand get \na discount',style: Styles.headLineStyle3.copyWith(color: white))
                    //         ]
                    //         ),
                    //         ),
                    //       ),
                    ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF189999), width: 18),
                  ),
                ),
              )
            ],
          ),
          const Gap(15),
          Container(
            width: Screen.getWidth() * 0.44,
            height: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Styles.orangeColor),
            child: Column(
              children: [
                Text(
                  'Take Love',
                  style: Styles.headLineStyle2
                      .copyWith(color: white, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                Text(
                  '😍',
                  style: Styles.headLineStyle1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
