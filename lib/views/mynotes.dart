import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/widgets/notebottomsheet.dart';
import 'package:note_it/widgets/notelistviewbuilder.dart';
import 'package:note_it/widgets/notesoptioncard.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Mynotes extends StatelessWidget {
  const Mynotes({super.key});
  static String id = kmynotes;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: kcolor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const Notebottomsheet();
            },
          );
        },
        child: const Icon(
          FontAwesomeIcons.pen,
          color: kcolor2,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                DateFormat('d, MMMM, yyyy').format(now).toString(),
                style: const TextStyle(color: kcolor3, fontSize: 15),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Notes',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
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
            const Expanded(
              child: Notelistveiwbuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
