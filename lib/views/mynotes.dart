import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/widgets/notebottomsheet.dart';
import 'package:note_it/widgets/notecard.dart';

class Mynotes extends StatelessWidget {
  const Mynotes({super.key});
  static String id = kmynotes;
  @override
  Widget build(BuildContext context) {
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
      body: Align(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/document_notes_file_archive_pushpin_icon_149704.png',
                height: 60,
                width: 60,
              ),
              const Text(
                'My notes',
                style: TextStyle(fontSize: 32),
              ),
              const Text(
                '350 notes',
                style: TextStyle(color: kcolor3, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: const Notecard(),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
