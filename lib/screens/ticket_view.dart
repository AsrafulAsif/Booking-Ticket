import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFF526799),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(21),
                          topLeft: Radius.circular(21))),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'NYC',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Expanded(child: Container()),
                          const ThickContainer(),
                          Expanded(
                              child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => const SizedBox(
                                                width: 2,
                                                height: 1,
                                                child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white)),
                                              )),
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
                          )),
                          const ThickContainer(),
                          Expanded(child: Container()),
                          Text(
                            'LDN',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: Text(
                              'New work',
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                          Text(
                            '8H 30M',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              'London',
                              textAlign: TextAlign.end,
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //showing the orange part
                Container(
                  color: Styles.orangeColor,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
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
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                            );
                          },
                        ),
                      )),
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21))),
                  padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('11 May',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(5),
                              Text('Date',style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('8:30 AM',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(5),
                              Text('Departure Time',style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('23',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                              const Gap(5),
                              Text('Number',style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
