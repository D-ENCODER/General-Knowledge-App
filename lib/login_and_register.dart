import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:general_knowledge/main.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

final _auth = FirebaseAuth.instance;
String email = '';
String password = '';

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Hero(
                tag: 'gk',
                child: Image.asset(
                  'assets/images/MY_GK_LOGO.png',
                  height: 60,
                ),
              ),
              Text(
                'General Knowledge',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RoundedButton(
                colour: Color(0xffA9A1E3),
                title: 'LOGIN',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                colour: Color(0xff544ecc),
                title: 'REGISTER',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Register();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text('Skip'),
                onPressed: () {
                  _auth.signInAnonymously();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeWidget();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showLoader = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showLoader,
      child: Scaffold(
        backgroundColor: Color(0xfffcfcfc),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Hero(
                  tag: 'gk',
                  child: Image.asset(
                    'assets/images/MY_GK_LOGO.png',
                    height: 100,
                  ),
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
                            email = value;
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
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Password :-',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            password = value;
                          },
                          style: TextStyle(color: Colors.black),
                          decoration: kTextFeildDecoration,
                        ),
                      ),
                    ],
                  ),
                ),
                RoundedButton(
                  colour: Color(0xff544ecc),
                  title: 'Login',
                  onPressed: () async {
                    setState(() {
                      showLoader = true;
                    });
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);

                      // ignore: unnecessary_null_comparison
                      if (newUser != null) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeWidget();
                        }));
                      }
                    } catch (e) {
                      print(e);
                    }
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();

                    await prefs.setBool('login', true);
                    setState(() {
                      showLoader = false;
                    });
                  },
                ),
                TextButton(
                  child: Text('Forgot Password?'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ForgotPass();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  bool showLoader = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showLoader,
      child: Scaffold(
        backgroundColor: Color(0xfffcfcfc),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Hero(
                  tag: 'gk',
                  child: Image.asset(
                    'assets/images/MY_GK_LOGO.png',
                    height: 100,
                  ),
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
                            email = value;
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
                RoundedButton(
                  colour: Color(0xff544ecc),
                  title: 'Send Email',
                  onPressed: () {
                    setState(() {
                      showLoader = true;
                    });
                    _auth.sendPasswordResetEmail(email: email);
                    Alert(
                      context: context,
                      style: AlertStyle(
                        animationDuration: Duration(milliseconds: 500),
                      ),
                      type: AlertType.none,
                      title: "SUCCESS",
                      desc: "Email has been sent successfully",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Back to login page",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Login();
                                },
                              ),
                            );
                          },
                          color: Colors.grey[700],
                        ),
                      ],
                    ).show();
                    setState(() {
                      showLoader = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showLoader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Hero(
                tag: 'gk',
                child: Image.asset(
                  'assets/images/MY_GK_LOGO.png',
                  height: 100,
                ),
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
                          email = value;
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
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Password :-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          password = value;
                        },
                        style: TextStyle(color: Colors.black),
                        decoration: kTextFeildDecoration,
                      ),
                    ),
                  ],
                ),
              ),
              RoundedButton(
                colour: Color(0xff544ecc),
                title: 'Register',
                onPressed: () async {
                  setState(() {
                    showLoader = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    // ignore: unnecessary_null_comparison
                    if (newUser != null) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeWidget();
                      }));
                    }
                  } catch (e) {
                    print(e);
                  }
                  setState(() async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool('login', true);
                  });
                  setState(() {
                    showLoader = false;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

const kTextFeildDecoration = InputDecoration(
  hintText: 'Enter your password',
  hintStyle: TextStyle(color: Color(0xffbdbdbd)),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.colour, required this.title, required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed as void Function()?,
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
