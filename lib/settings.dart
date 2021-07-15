import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_dnd/flutter_dnd.dart';
import 'package:general_knowledge/constants.dart';
import 'package:general_knowledge/splash.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _auth = FirebaseAuth.instance;
  bool isOn = false;
  bool showloader = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showloader,
      child: Scaffold(
        appBar: buildAppBar(),
        body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 90,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.7),
                    blurRadius: 25,
                    offset: Offset(5, 10),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enable Do Not Disturb',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Switch(
                          splashRadius: 5,
                          value: isOn,
                          onChanged: (value) {
                            setState(() async {
                              if (await FlutterDnd
                                  .isNotificationPolicyAccessGranted) {
                                setState(() {
                                  if (isOn == true) {
                                    FlutterDnd.setInterruptionFilter(
                                        FlutterDnd.INTERRUPTION_FILTER_ALL);
                                    isOn = false;
                                  } else {
                                    FlutterDnd.setInterruptionFilter(
                                        FlutterDnd.INTERRUPTION_FILTER_NONE);
                                    isOn = true;
                                  }
                                });
                              } else {
                                FlutterDnd.gotoPolicySettings();
                              }
                            });
                          }),
                    ],
                  ),
                ],
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
                  title: "LOGOUT ??",
                  desc:
                      "Are you sure you want to Logout all the sessions in the app ?",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Yes",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        setState(() {
                          showloader = true;
                        });
                        try {
                          setState(() async {
                            _auth.signOut();
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('login', false);
                          });
                        } catch (e) {
                          print(e);
                        }
                        setState(() {
                          showloader = false;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return IsUserLoggedIn();
                              },
                            ),
                          );
                        });
                      },
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
                // setState(() {
                //   _auth.signOut();

                // });
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                padding: EdgeInsets.all(20),
                height: 90,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.7),
                      blurRadius: 25,
                      offset: Offset(5, 10),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout from all devices',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                          size: 30.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
