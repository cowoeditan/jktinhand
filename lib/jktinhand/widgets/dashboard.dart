import 'package:flutter/material.dart';
import 'package:jktinhand/utils/textstyles.dart';
import 'package:jktinhand/jktinhand/widgets/bigcardinfo.dart';
import 'package:jktinhand/utils/colors.dart';
import 'package:marquee_flutter/marquee_flutter.dart';

//import 'dart:async';
//import 'dart:math';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //Added

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Stack(
                  children: <Widget>[
                    /*OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ), */
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: 
                        // Column(
                        //   children: [
                        //     Align(
                        //       alignment: Alignment.centerLeft,
                              // child: new MarqueeWidget ()Text(
                              //   "Flash Info",
                              //   textAlign: TextAlign.left,
                              //   style: headingTextStyle,
                                
                              // ),
                              // child: 
                              new MarqueeWidget(text: "HOLAAAAA ...", textStyle: new TextStyle(fontSize: 20.0, color: Colors.red),
                                scrollAxis: Axis.horizontal, 
                              ),
                            // ),
                            //MyInfo(),
                        //   ],
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Table(
                          children: [
                            TableRow(
                              children: [
                                InfoBigCard(
                                  titleText: 'Beban',
                                  firstText: "5,000",
                                  secondText: "MW",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                                InfoBigCard(
                                  titleText: 'Frekwensi',
                                  firstText: "50.001",
                                  secondText: "HZ",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                InfoBigCard(
                                  titleText: 'Gardu Padam',
                                  firstText: "0",
                                  secondText: "Gardu",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                                InfoBigCard(
                                  titleText: 'Trip',
                                  firstText: "0",
                                  secondText: "Penyulang",
                                   icon: Icon(
                                      Icons.adjust,
                                      size: 16,
                                      color: blueColor,
                                    ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                InfoBigCard(
                                  titleText: 'ENS',
                                  firstText: "4,000",
                                  secondText: "KWH",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    // MaterialPageRoute(
                                    //   builder: (context) => SuperLikesMePage(),
                                    // ),
                                    // );
                                  },
                                  child: InfoBigCard(
                                    titleText: 'Energi ',
                                    firstText: "5,000",
                                    secondText: "GWH",
                                    icon: Icon(
                                      Icons.adjust,
                                      size: 16,
                                      color: blueColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
