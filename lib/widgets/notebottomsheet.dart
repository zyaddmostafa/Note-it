import 'package:flutter/material.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Notebottomsheet extends StatelessWidget {
  const Notebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            NotesTextfield(hint: 'title'),
            SizedBox(
              height: 20,
            ),
            NotesTextfield(
              hint: 'description',
              maxlines: 5,
            ),
            SizedBox(
              height: 25,
            ),
            Custombuttom(buttomname: 'Add note')
          ],
        ),
      ),
    );
  }
}
