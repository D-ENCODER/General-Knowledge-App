import 'package:flutter/material.dart';
import 'package:general_knowledge/constants.dart';

class StatesAndCapitals extends StatefulWidget {
  const StatesAndCapitals({Key? key}) : super(key: key);

  @override
  _StatesAndCapitalsState createState() => _StatesAndCapitalsState();
}

class _StatesAndCapitalsState extends State<StatesAndCapitals> {
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
        children: [],
      ),
    );
  }
}
