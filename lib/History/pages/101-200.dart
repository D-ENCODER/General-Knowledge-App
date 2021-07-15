import 'package:flutter/material.dart';
import 'package:general_knowledge/History/history.dart';
import 'package:general_knowledge/History/pages/waves-1/101-120.dart';
import 'package:general_knowledge/History/pages/waves-1/121-140.dart';
import 'package:general_knowledge/History/pages/waves-1/141-160.dart';
import 'package:general_knowledge/History/pages/waves-1/161-180.dart';
import 'package:general_knowledge/History/pages/waves-1/181-200.dart';
import 'package:general_knowledge/constants.dart';
import 'package:page_transition/page_transition.dart';

class OneHundredOneToTwoHundred extends StatefulWidget {
  const OneHundredOneToTwoHundred({Key? key}) : super(key: key);

  @override
  _OneHundredOneToTwoHundredState createState() =>
      _OneHundredOneToTwoHundredState();
}

class _OneHundredOneToTwoHundredState extends State<OneHundredOneToTwoHundred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneHundredOneToOneTwenty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(title: '101-120'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneTwentyOneToOneForty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '121-140',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneFortyOneToOneSixty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '141-160',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneSixtyOneToOneEighty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '161-180',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneEightyOneToTwoHundred(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '181-200',
            ),
          ),
        ],
      ),
    );
  }
}
