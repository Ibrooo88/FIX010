import 'package:fix010/screens/regestration_screen.dart';
import 'package:fix010/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                SizedBox(height: 180, child: Image.asset('images/logo.png')),
                Text(
                  'massegeMe',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 13, 63, 88),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48),
            MyBottum(
              colour: Colors.lightBlueAccent,
              title: 'Sing In',
              onPress: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyBottum(
              colour: Colors.blueAccent,
              title: 'Register',
              onPress: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
