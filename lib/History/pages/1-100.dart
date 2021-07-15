import 'package:flutter/material.dart';
import 'package:general_knowledge/History/pages/Waves/1-20.dart';
import 'package:general_knowledge/History/pages/Waves/21-40.dart';
import 'package:general_knowledge/History/pages/Waves/41-60.dart';
import 'package:general_knowledge/History/pages/Waves/61-80.dart';
import 'package:general_knowledge/History/pages/Waves/81-100.dart';
import 'package:general_knowledge/constants.dart';
import 'package:page_transition/page_transition.dart';

import '../history.dart';

class FirstWave extends StatefulWidget {
  @override
  _FirstWaveState createState() => _FirstWaveState();
}

class _FirstWaveState extends State<FirstWave> {
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
                    child: OneToTen(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(title: '1-20'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: TwentyOneToForty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '21-40',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: FortyOneToSixty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '41-60',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: SixtyOneToEighty(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '61-80',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: EightyOneToHundred(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '81-100',
            ),
          ),
        ],
      ),
    );
  }
}
