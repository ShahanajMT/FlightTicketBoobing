import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/thick_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    //? TicketUI -> Start
    return SizedBox(
      //color: Colors.red,
      width: size.width * 0.80,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        //color: Colors.yellow,
        child: Column(
          children: [
            // TODO: Showing the Blue Part of the Ticket/Card
            //! Start
            Container(
              //margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Styles.indigoColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'NYC',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      //const Spacer(),
                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints contriants) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (contriants.constrainWidth() / 8).floor(),
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //const Spacer(),

                      const ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        'LDN',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New-York',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      Text(
                        '8H 30M',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'London',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //! End
            // TODO: Showing the blue Part of Ticket/Card
            //! Strat
            Container(
              //margin: const EdgeInsets.all(8),
              color: Styles.blueColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //! End
            // ToDO: bottom part of blue Ticket / card
            //! Start
            Container(
              padding: const EdgeInsets.only(
                  left: 18, top: 12, right: 18, bottom: 12),
              decoration: BoxDecoration(
                  color: Styles.blueColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 May',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        'Date',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '08:00 AM',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        'Departure Time',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'SeatN0',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        '22',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //! End
          ],
        ),
        //? 
      ),
    );
    //? Ticket UI -> End

    
  }
}
