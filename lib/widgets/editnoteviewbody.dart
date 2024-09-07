import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/cubits/getfavnotes/getfavnotes_cubit.dart';
import 'package:note_it/cubits/gethiddennote/cubit/gethiddennote_cubit.dart';
import 'package:note_it/cubits/gettrashnote/gettrashnote_cubit.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Editnoteviewbody extends StatefulWidget {
  const Editnoteviewbody({super.key, required this.notemodel});
  final Notemodel notemodel;

  @override
  State<Editnoteviewbody> createState() => _EditnoteviewbodyState();
}

class _EditnoteviewbodyState extends State<Editnoteviewbody> {
  String? title, decs;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          NotesTextfield(
            hint: widget.notemodel.title,
            onchange: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          NotesTextfield(
            hint: widget.notemodel.title,
            onchange: (value) {
              title = value;
            },
            maxlines: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          Custombuttom(
            buttomname: 'Submit edit',
            onTap: () {
              widget.notemodel.title = title ?? widget.notemodel.title;
              widget.notemodel.desc = decs ?? widget.notemodel.desc;
              widget.notemodel.save();
              BlocProvider.of<NotesCubit>(context).fetchallnotes();
              BlocProvider.of<GetfavnotesCubit>(context).fetchfavnotes();
              BlocProvider.of<GettrashnoteCubit>(context).fetchtrashnotes();
              BlocProvider.of<GethiddennoteCubit>(context).fetchhiddennotes();
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
