import 'package:flutter/material.dart';
import 'package:general_knowledge/History/pages/1-100.dart';
import 'package:general_knowledge/History/pages/101-200.dart';
import 'package:general_knowledge/constants.dart';
import 'package:page_transition/page_transition.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                    child: FirstWave(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(title: '1-100'),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: OneHundredOneToTwoHundred(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: NumberingCard(
              title: '101-200',
            ),
          ),
          NumberingCard(title: '201-300'),
          NumberingCard(title: '301-400'),
          NumberingCard(title: '401-500'),
          NumberingCard(title: '501-600'),
          NumberingCard(title: '601-700'),
          NumberingCard(title: '701-800'),
        ],
      ),
    );
  }
}

class NumberingCard extends StatelessWidget {
  final String title;
  const NumberingCard({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Color(0xff000000),
      elevation: 25,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
            fontFamily: 'roboto',
          ),
        ),
      ),
    );
  }
}
