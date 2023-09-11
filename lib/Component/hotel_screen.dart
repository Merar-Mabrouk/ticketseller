import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ticket/Component/size.dart';
import 'package:ticket/const/cosnt.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    final size = Screen.getSize(context);
    return Container(
      width: size.width * 0.60,
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5),
          ]),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17),
      margin: const EdgeInsets.only(right: 17, left: 10, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: const DecorationImage(
                    image: AssetImage('assets/hotel1.jfif'),
                    fit: BoxFit.cover)),
          ),
          const Gap(10),
          Text(
            widget.hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: zColor),
          ),
          const Gap(5),
          Text(widget.hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text(
            '${widget.hotel['price']}£/Night',
            style: Styles.headLineStyle1.copyWith(color: zColor),
          ),
        ],
      ),
    );
  }
}
