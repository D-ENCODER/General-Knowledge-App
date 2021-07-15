import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:general_knowledge/constants.dart';
import 'package:general_knowledge/login_and_register.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class FeedbackWidget extends StatefulWidget {
  const FeedbackWidget({Key? key}) : super(key: key);

  @override
  _FeedbackWidgetState createState() => _FeedbackWidgetState();
}

class _FeedbackWidgetState extends State<FeedbackWidget> {
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
  String messagetext = '';
  String name = '';
  String emailid = '';
  double rate = 0;
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
                'FEEDBACK',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 15),
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
                      'Name :-',
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
                          name = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: kTextFeildDecoration.copyWith(
                          hintText: 'Enter your Name',
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
                      'Ratings :-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 0.5,
                      glowColor: Color(0xffA9A1E3),
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color(0xff544ecc),
                      ),
                      onRatingUpdate: (rating) {
                        rate = rating;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Comment :-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        minLines: 5,
                        maxLines: 50,
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          messagetext = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: kTextFeildDecoration.copyWith(
                          hintText: 'Comment your feedback',
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
                    if (rate != 0 &&
                        name != '' &&
                        emailid != '' &&
                        messagetext != '') {
                      _firestore.collection('feedback').add(
                        {
                          'comments': messagetext,
                          'email': emailid,
                          'name': name,
                          'ratings': rate,
                        },
                      );
                      toast('Thanks for your feedback', Toast.LENGTH_LONG,
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
