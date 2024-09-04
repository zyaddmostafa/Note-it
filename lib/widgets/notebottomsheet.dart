import 'package:flutter/material.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Notebottomsheet extends StatelessWidget {
  const Notebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: const Column(
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
            Custombuttom(buttomname: 'Add note'),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
