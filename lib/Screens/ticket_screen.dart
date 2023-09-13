import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/const/cosnt.dart';

List<Color> i = [Colors.white, Colors.white54];
List<Color> text= [Colors.black, Colors.black38];

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  int t = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'Tickets',
            style: Styles.headLineStyle1.copyWith(fontSize: 40),
          ),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    t =0;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: i[t],
                  elevation: 2.5,
                  padding: const EdgeInsets.symmetric(horizontal: 50,),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    )
                  )
                ) ,
                child: Text(
                  'Upcoming',
                  style: Styles.headLineStyle4.copyWith(color: text[t]),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    t =1;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: i[(t+1)%2],
                  elevation: 2.5,
                  padding: const EdgeInsets.symmetric(horizontal: 50,),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )
                  )
                ) ,
                child: Text(
                  'Previous',
                  style: Styles.headLineStyle4.copyWith(color: text[(t+1)%2]),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
