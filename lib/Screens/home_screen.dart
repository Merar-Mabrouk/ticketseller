import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/const/cosnt.dart';

import '../Component/Ticket_view.dart';
import '../Component/hotel_screen.dart';
import '../const/infos.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final search = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SafeArea(
        child: ListView(
          children: [
            const Gap(40),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning ",
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Ticket",
                            style: Styles.headLineStyle1,
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images.jfif"),
                                fit: BoxFit.fitHeight)),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Gap(25),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff4f6fd),
              ),
              child: TextFormField(
                controller: search,
                decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: Styles.headLineStyle4,
                    prefixIcon: Icon(
                      FluentSystemIcons.ic_fluent_search_filled,
                      color: Colors.grey.shade500,
                    ),
                    border: InputBorder.none),
                cursorColor: primaryColor,
              ),
              // Row(
              //   children: [
              //     Icon(
              //       FluentSystemIcons.ic_fluent_search_filled,
              //       color: Colors.grey.shade500,
              //     ),
              //     const Gap(10),
              //     Text(
              //       "Search",
              //       style: Styles.headLineStyle4,
              //     )
              //   ],
            ),
            // ),
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TicketView(),
                  TicketView(),
                  TicketView(),
                  TicketView(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hotels", style: Styles.headLineStyle2),
                  InkWell(
                    child: Text("View all",
                        style: Styles.textStyle.copyWith(color: primaryColor)),
                    onTap: () {},
                  )
                ],
              ),
            ),
            const Gap(5),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            SizedBox(
                height: 360,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelList.length,
                    itemBuilder: (context, index) {
                      return HotelScreen(hotel: hotelList[index]);
                    })),
            //       ],
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
