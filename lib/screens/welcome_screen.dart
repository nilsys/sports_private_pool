import 'package:flutter/material.dart';
import 'package:sports_private_pool/components/rounded_button.dart';
import 'package:sports_private_pool/screens/login_screen.dart';
import 'package:sports_private_pool/screens/register_screen.dart';

class WelcomeScreen extends StatefulWidget {

  static const id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
              Container(
                  height: 100.0,
                  child: Image.asset('images/logo.png')
              ),
              Text('E N V I S I O N',
                style: TextStyle(
                  letterSpacing: 3.0,
                  fontSize: 18.0
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.0,
              ),
              RoundedButton(
                color: Colors.black87,
                text: 'Login',
                onpressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                },
              )
              ,
              RoundedButton(
                color: Colors.black54,
                text: 'Register',
                onpressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                },
              )
          ],
        ),
      ),
    );
  }
}

