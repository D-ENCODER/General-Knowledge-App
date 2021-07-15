import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:general_knowledge/Terms_and_conditions.dart';
import 'package:general_knowledge/bug_issues.dart';
import 'package:general_knowledge/feedback.dart';
import 'package:general_knowledge/topics.dart';
import 'package:general_knowledge/privacy_policy.dart';
// import 'package:general_knowledge/settings.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Alert(
          context: context,
          style: AlertStyle(
            animationDuration: Duration(milliseconds: 500),
          ),
          type: AlertType.none,
          title: "EXIT APP ?",
          desc: "Are you sure you want to exit the app ?",
          buttons: [
            DialogButton(
              child: Text(
                "Yes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () =>
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              color: Colors.grey[700],
            ),
            DialogButton(
              child: Text(
                "No",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              color: Colors.grey[500],
            )
          ],
        ).show();
        return true;
      },
      child: GridView(
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
              setState(
                () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: TopicsWidget(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
              );
            },
            child: MyCard(
              location: 'assets/images/topics.png',
              title: 'Topics',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  //TODO: PLEASE UNCOMMENT THIS BEFORE BUILDING
                  // Navigator.push(
                  //   context,
                  //   PageTransition(
                  //     child: Settings(),
                  //     type: PageTransitionType.fade,
                  //   ),
                  // );
                },
              );
            },
            child: MyCard(
              location: 'assets/images/topics1.png',
              title: 'Settings',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: PrivacyPolicy(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
              );
            },
            child: MyCard(
              location: 'assets/images/topics2.png',
              title: 'P.P.',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: TermsAndConditions(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
              );
            },
            child: MyCard(
              location: 'assets/images/topics3.png',
              title: 'T & C',
            ),
          ),
          GestureDetector(
            onTap: () => launch(
                'https://wa.me/917434076092?text=Hi%20Het%20Joshi%20!!!%20I%20downloaded%20your%20app%20and%20loved%20it%20too%20much,%20Thank%20you%20for%20making%20such%20a%20beautiful%20app%20%20%F0%9F%98%8D%F0%9F%98%8D'),
            child: MyCard(
              location: 'assets/images/topics4.png',
              title: 'Whatsapp',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BugScreen();
                  },
                ),
              );
            },
            child: MyCard(
              location: 'assets/images/topics6.png',
              title: 'Bug issue',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: FeedbackWidget(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
              );
            },
            child: MyCard(
              location: 'assets/images/topics7.png',
              title: 'Feedback',
            ),
          ),
          GestureDetector(
            onTap: () {
              Alert(
                context: context,
                style: AlertStyle(
                  animationDuration: Duration(milliseconds: 500),
                ),
                type: AlertType.none,
                title: "EXIT APP ?",
                desc: "Are you sure you want to exit the app ?",
                buttons: [
                  DialogButton(
                    child: Text(
                      "Yes",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => SystemChannels.platform
                        .invokeMethod('SystemNavigator.pop'),
                    color: Colors.grey[700],
                  ),
                  DialogButton(
                    child: Text(
                      "No",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    color: Colors.grey[500],
                  )
                ],
              ).show();
            },
            child: MyCard(
              location: 'assets/images/topics5.png',
              title: 'Exit',
            ),
          ),
        ],
      ),
    );
  }
}
