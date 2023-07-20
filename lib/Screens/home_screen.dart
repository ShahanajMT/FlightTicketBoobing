import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(30),
                          Text(
                            'Good Morning',
                            style: Styles.headLineStyle3,
                          ),
                          //const SizedBox(height: 7,),
                          const Gap(5),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Styles.primaryColor,
                        radius: 30,
                      )
                    ],
                  ),
                  const Gap(25),
                  /*Container(
                  //height: 50,
                  //width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey,),
                      Text('Search', style: Styles.headLineStyle3,)
                    ],
                  ),
                ),*/
                  const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          iconColor: Colors.grey,
                          hintText: 'Search'),
                    ),
                  ),
                  const Gap(25),
                  //! Upcoming
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcomig Flights',
                        style: Styles.headLineStyle2,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('View all'),
                      ),
                    ],
                  ),
                  const Gap(30),
                  //! TicketBooking
                  const SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TicketView(),
                        TicketView(),
                      ],
                    ),
                  ),
                  const Gap(30),
                  //! Hotels
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotel", style: Styles.headLineStyle2,),
                      TextButton(onPressed: () {}, child: const Text('View all'),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
