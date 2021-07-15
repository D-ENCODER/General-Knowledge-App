import 'package:flutter/material.dart';
import 'package:general_knowledge/main.dart';
import 'package:flip_card/flip_card.dart';

class MyFlipCard extends StatelessWidget {
  final String fronttext;
  final String backtext;
  const MyFlipCard({Key? key, required this.fronttext, required this.backtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.7),
                blurRadius: 25,
                offset: Offset(5, 10),
              ),
            ],
            color: Color(0xffA27DA2),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                fronttext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
            ),
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withOpacity(0.7),
                blurRadius: 25,
                offset: Offset(5, 10),
              ),
            ],
            color: Color(0xff9D5864),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          margin: EdgeInsets.all(15.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                backtext,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    brightness: Brightness.dark,
    toolbarHeight: 120,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
    ),
    actions: [
      Icon(Icons.light_mode_outlined),
      ChangeThemeButtonWidget(),
      Icon(Icons.bedtime_outlined),
    ],
    title: Text(
      'General Knowledge',
      style: TextStyle(
        fontFamily: 'roboto',
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class MyCard extends StatelessWidget {
  final String location;
  final String title;
  const MyCard({Key? key, required this.title, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Color(0xff000000),
      elevation: 25,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(location),
            ),
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
