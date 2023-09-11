import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/Component/buttonsp.dart';
import 'package:ticket/Component/second_wid.dart';
import 'package:ticket/Component/usable_widget.dart';
import 'package:ticket/const/cosnt.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _dep = TextEditingController();
  final TextEditingController _arrival = TextEditingController();
  @override
  void dispose() {
    _arrival.dispose();
    _dep.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are\nYou looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: 36),
          ),
          const Gap(20),
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      debugPrint("khhhhhh");
                    },
                    child: Text("Airline Ticket",
                        style: Styles.textStyle.copyWith(fontSize: 14))),
                InkWell(
                    onTap: () {
                      debugPrint("khhhhhh");
                    },
                    child: Text("Hotels", style: Styles.textStyle)),
              ],
            ),
          ),
          const Gap(28),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              controller: _dep,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'Departure',
                  hintStyle: Styles.headLineStyle3,
                  prefixIcon: const Icon(
                    Icons.flight_takeoff_rounded,
                    color: tst,
                  )),
            ),
          ),
          const Gap(20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              controller: _arrival,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  hintText: 'Arrival',
                  hintStyle: Styles.headLineStyle3,
                  prefixIcon: const Icon(
                    Icons.flight_land_rounded,
                    color: tst,
                  )),
            ),
          ),
          const Gap(25),
          SpButton(
              khdam: () {
                debugPrint("khhhhhh");
              },
              buttonText: 'Find tickets'),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Flights", style: Styles.headLineStyle2),
                InkWell(
                  child: Text("View all",
                      style: Styles.textStyle.copyWith(color: primaryColor)),
                  onTap: () {},
                )
              ],
            ),
          ),
          const Row(
            children: [
              UsableWidget(
                  msg:
                      "20% discount on business class ticketsfrom Airline On International"),
              SecondWid(clr: Color(0xff35acaf))
            ],
          )
        ],
      ),
    );
  }
}
