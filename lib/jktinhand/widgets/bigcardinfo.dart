import 'package:jktinhand/utils/textstyles.dart';
import 'package:flutter/material.dart';

class InfoBigCard extends StatelessWidget {
  final String titleText, firstText, secondText;
  final Widget icon;

  const InfoBigCard(
      {Key key,
      @required this.titleText,
      @required this.firstText,
      @required this.secondText,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16,
          bottom: 24,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
                  alignment: Alignment.topRight,
                  child: icon,
                ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: Text(firstText, style: titleStyle)),
                  Align(
                      alignment: Alignment.center,
                      child: Text(secondText, style: satTitleStyle)),
                ]),
                  Align(
                      alignment: Alignment.center,
                      child : Text(titleText, style: subTitleStyle),
                  ),    
                
          ],
        ),
      ),
    );
  }
}
