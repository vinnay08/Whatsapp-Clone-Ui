import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Widgets/uihelper.dart';

import '../Login/loginscreen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/onboarding.png'),
            SizedBox(
              height: 50,
            ),
            Uihelper.Customtext(
                text: 'Welcome to WhatsApp',
                height: 20,
                color: Colors.black,
                fontweight: FontWeight.bold),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.Customtext(text: 'Read out', height: 14),
                Uihelper.Customtext(
                  text: ' Privacy Policy. ',
                  height: 14,
                  color: Colors.blue,
                ),
                Uihelper.Customtext(
                    text: 'Tap "Agree and Continue"', height: 14)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.Customtext(text: "to accept the", height: 14),
                Uihelper.Customtext(
                    text: " Terms of Service", height: 14, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButtoon(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Loginscreen()));
          },
          buttonname: 'AGREE AND CONTINUE'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
