import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/Component/ticket_view.dart';
import 'package:ticket/const/cosnt.dart';

import '../Component/deco.dart';
import '../Component/dots.dart';

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
                  foregroundColor: Colors.grey,
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
                  style: Styles.headLineStyle4.copyWith(color: text[t],fontSize: 14),
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
                  foregroundColor: Colors.grey,
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
                  style: Styles.headLineStyle4.copyWith(color: text[(t+1)%2],fontSize: 14),
                ),
              ),
            ],
          ),
          const Gap(20),
          Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child:Column(
              children: [
                const Gap(20),
                Row(
                  children: [
                    const Gap(10),
                    Text(
                      "NYC",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Expanded(child: Container()),
                    const Deco(thn: blueMzmr),
                    Expanded(
                      child: Stack(
                        children: [
                          const Dotted(),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: blueMzmr,
                                )),
                          ),
                        ],
                      ),
                    ),
                    const Deco(thn: blueMzmr,),
                    Expanded(child: Container()),
                    Text("LDN",
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.black)),
                  const Gap(10)
                  ],
                ),
                Row(
                
                  children: [
                const Gap(10),
                    SizedBox(
                      child: Text(
                        "New-York",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.grey),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Text(
                        "8H 30M",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.grey),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Text(
                        "London",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.grey),
                      ),
                    ),
                    const Gap(10),
                  ],
                ),
 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: LayoutBuilder(builder: (context, constraint) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraint.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                height: 1,
                                width: 5,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1 May',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                ),
                                Text(
                                  'Date',
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '08:00 AM',
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                ),
                                Text(
                                  'Departure Time',
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('23',
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Colors.black)),
                                Text('Number',
                                    style: Styles.headLineStyle4
                                        .copyWith(color: Colors.grey)),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ],   
            ),
          ),
         const Gap(25),
         const TicketView(),  
        ],    
      ),
    );
  }
}
