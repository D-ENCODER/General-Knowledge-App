import 'package:flutter/material.dart';
import 'package:general_knowledge/History/history.dart';
import 'package:general_knowledge/constants.dart';
import 'package:general_knowledge/states_and_capitals/states_and_capitals.dart';
import 'package:page_transition/page_transition.dart';

class TopicsWidget extends StatefulWidget {
  @override
  _TopicsWidgetState createState() => _TopicsWidgetState();
}

class _TopicsWidgetState extends State<TopicsWidget> {
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
                    child: History(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: MyCard(
              title: 'History',
              location: 'assets/images/History.png',
            ),
          ),
          MyCard(
            title: 'Politics',
            location: 'assets/images/Politics.jpg',
          ),
          MyCard(
            title: 'Economy',
            location: 'assets/images/economics.png',
          ),
          MyCard(
            title: 'Basics',
            location: 'assets/images/basic.png',
          ),
          MyCard(
            title: 'Geography',
            location: 'assets/images/geography.jpeg',
          ),
          MyCard(
            title: 'Sports',
            location: 'assets/images/sports.jpg',
          ),
          MyCard(
            title: 'Biology',
            location: 'assets/images/biology_final.png',
          ),
          MyCard(
            title: 'Inventions',
            location: 'assets/images/inventions.png',
          ),
          MyCard(
            title: 'Ind.Culture',
            location: 'assets/images/culture.jpg',
          ),
          MyCard(
            title: 'Technology',
            location: 'assets/images/technology.jpg',
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  PageTransition(
                    child: StatesAndCapitals(),
                    type: PageTransitionType.fade,
                  ),
                );
              });
            },
            child: MyCard(
              title: 'Capitals',
              location: 'assets/images/states.jpg',
            ),
          ),
          MyCard(
            title: 'Currencies',
            location: 'assets/images/currencies.png',
          ),
        ],
      ),
    );
  }
}
