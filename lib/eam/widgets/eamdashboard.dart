import 'package:flutter/material.dart';
import 'package:jktinhand/utils/textstyles.dart';
import 'package:jktinhand/eam/widgets/cardinfodashboard.dart';
import 'package:jktinhand/utils/colors.dart';

//import 'dart:async';
//import 'dart:math';

class EamDashboardHome extends StatefulWidget {
  @override
  _EamDashboardHomeState createState() => _EamDashboardHomeState();
}

class _EamDashboardHomeState extends State<EamDashboardHome> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //Added

    super.dispose();
  }

  Widget _iconaset(String txt,IconData ico) {
     return(
        Container(
          child : Padding(padding: EdgeInsets.all(5.0),
                              child:FlatButton(
                                    onPressed: () => {},
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10.0),
                                    child: Column( // Replace with a Row for horizontal icon + text
                                      children: <Widget>[
                                        Icon(ico,color : Colors.white
                                       ),
                                        Text(txt, style : iconTextStyle
                                         )
                                      ],
                                    )
                                )
                            )
        )                   
     );
  }

  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Aset'),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    color: Colors.white,
                   child : ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _iconaset('GI',Icons.ev_station),
                      _iconaset('GH',Icons.adjust),
                      _iconaset('GD',Icons.archive),
                      _iconaset('Peralatan',Icons.devices),
                      _iconaset('WO',Icons.mobile_screen_share),
                      //_iconaset('Mutasi',Icons.move_to_inbox),
                     
                    
                      
                    ],   
                )   
                )
              ),
              Expanded(
                flex: 6,
                child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    color: Colors.white,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Table(
                          children: [
                            TableRow(
                              children: [
                                InfoBigCard(
                                  titleText: 'Work Order',
                                  firstText: "56",
                                  secondText: "Terbit",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                               InfoBigCard(
                                  titleText: 'Work Order',
                                  firstText: "10",
                                  secondText: "Open",
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
                                  titleText: 'Work Order',
                                  firstText: "1440",
                                  secondText: "Selesai",
                                  icon: Icon(
                                    Icons.adjust,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                               InfoBigCard(
                                  titleText: 'Work Order',
                                  firstText: "100",
                                  secondText: "Tutup",
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
                                  titleText: 'Belum Har',
                                  firstText: "50.001",
                                  secondText: "Unit",
                                  icon: Icon(
                                    Icons.add_alarm,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                               InfoBigCard(
                                  titleText: 'Sedang Har',
                                  firstText: "1000",
                                  secondText: "Unit",
                                  icon: Icon(
                                    Icons.work,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                             TableRow(
                              children: [
                                InfoBigCard(
                                  titleText: 'HI Sehat',
                                  firstText: "50.001",
                                  secondText: "Unit",
                                  icon: Icon(
                                    Icons.healing,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                               InfoBigCard(
                                  titleText: 'HI Tidak Sehat',
                                  firstText: "50.001",
                                  secondText: "HZ",
                                  icon: Icon(
                                    Icons.flash_off,
                                    size: 16,
                                    color: blueColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  /* ProfileInfoCard(firstText: "54%", secondText: "Progress"),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(firstText: "152", secondText: "Level"),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
