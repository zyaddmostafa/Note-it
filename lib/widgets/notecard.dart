import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/getfavnotes/getfavnotes_cubit.dart';
import 'package:note_it/cubits/gettrashnote/gettrashnote_cubit.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/views/editnote.dart';
import 'package:note_it/widgets/showdiaglobody.dart';

class Notecard extends StatelessWidget {
  const Notecard({
    super.key,
    required this.notemodel,
    required this.color,
  });
  final Notemodel notemodel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return Showdialogbody(
              notemodel: notemodel,
            );
          },
        );
      },
      onTap: () {
        Navigator.pushNamed(context, Editnote.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: kcolor2),
            borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          notemodel.title,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        notemodel.date,
                        style: const TextStyle(fontSize: 12, color: kcolor3),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        notemodel.delete();
                        BlocProvider.of<NotesCubit>(context).fetchallnotes();
                        BlocProvider.of<GetfavnotesCubit>(context)
                            .fetchfavnotes();
                        BlocProvider.of<GettrashnoteCubit>(context)
                            .fetchtrashnotes();
                      },
                      icon: const Icon(FontAwesomeIcons.trash))
                ],
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  notemodel.desc,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
