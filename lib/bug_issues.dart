import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:general_knowledge/constants.dart';
import 'package:general_knowledge/login_and_register.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BugScreen extends StatefulWidget {
  const BugScreen({Key? key}) : super(key: key);

  @override
  _BugScreenState createState() => _BugScreenState();
}

class _BugScreenState extends State<BugScreen> {
  toast(String msg, Toast toast, ToastGravity toastGravity, Color colors) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toast,
      gravity: toastGravity,
      backgroundColor: colors,
      textColor: Colors.white,
      fontSize: 16,
    );
  }

  final _firestore = FirebaseFirestore.instance;
  String emailid = '';
  String messagetext = '';
  bool showloader = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showloader,
      child: Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Report A Bug',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Email :-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          emailid = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: kTextFeildDecoration.copyWith(
                          hintText: 'Enter your email',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Message :-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        maxLines: 50,
                        minLines: 5,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          messagetext = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: kTextFeildDecoration.copyWith(
                          hintText: 'Brief note about the bug',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RoundedButton(
                  colour: Color(0xff544ecc),
                  title: 'SEND',
                  onPressed: () {
                    setState(() {
                      showloader = true;
                    });
                    if (messagetext != '' && emailid != '') {
                      _firestore.collection('messages').add(
                        {
                          'details': messagetext,
                          'email': emailid,
                        },
                      );
                      toast('Reported Successfully', Toast.LENGTH_LONG,
                          ToastGravity.BOTTOM, Colors.black);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => super.widget,
                        ),
                      );
                    } else {
                      toast('Please fill the whole form', Toast.LENGTH_SHORT,
                          ToastGravity.BOTTOM, Colors.black);
                    }
                    setState(() {
                      showloader = false;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
