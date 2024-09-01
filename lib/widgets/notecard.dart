import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/views/editnote.dart';

class Notecard extends StatelessWidget {
  const Notecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Editnote.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: kcolor3),
            borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        color: kcolor2,
        child: const Padding(
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
              Divider(),
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
      ),
    );
  }
}
