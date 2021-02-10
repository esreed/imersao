import 'package:flutter/material.dart';
import 'package:trivia_academy/trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 167,
            ),
            Image(
              image: AssetImage('lib/assets/logo.png'),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Trivia\nAcademy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 88,
            ),
            FlatButton(
              child: Text(
                'Começar',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              color: Color(0xffDA0175),
              textColor: Color(0xffF7F7F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TriviaScreen(),
                  ),
                );
              },
            )
          ],
        ));
  }
}
