import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/helpers/custom_textfield.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Editnote extends StatelessWidget {
  const Editnote({super.key});
  static String id = keditnote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit note'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            const NotesTextfield(hint: 'Title'),
            const SizedBox(
              height: 15,
            ),
            const NotesTextfield(
              hint: 'description',
              maxlines: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            Custombuttom(
              buttomname: 'Submit edit',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
