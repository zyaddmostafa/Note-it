import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/widgets/favnotelistviewbilder.dart';
import 'package:note_it/widgets/notebottomsheet.dart';
import 'package:note_it/widgets/notesoptioncard.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Favnote extends StatelessWidget {
  const Favnote({super.key});
  static String id = kfavnote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const NotesTextfield(hint: 'Search'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return Notesoptioncard(
                    currentindex: index,
                    optionsmodel: optionbuttom[index],
                  );
                },
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Favourite',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const Expanded(
              child: Favnotelistveiwbuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
