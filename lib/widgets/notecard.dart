import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class Notecard extends StatelessWidget {
  const Notecard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 1,
      color: kcolor2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'to do',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '9 augest',
                style: TextStyle(fontSize: 16, color: kcolor3),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'sfdsgdfgsdfgsdfgsfgdsdsgsdsgfgsfddgsdsgdgsdf\nfdsafdafsdafsdfaafafdfkdbjldsbfgksdgfbkldsbjlksgbjklsdbjfklgbdjsklgbdlkb',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
