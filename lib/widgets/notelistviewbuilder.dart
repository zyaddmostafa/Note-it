import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/widgets/notecard.dart';

class Notelistveiwbuilder extends StatefulWidget {
  const Notelistveiwbuilder({
    super.key,
  });

  @override
  State<Notelistveiwbuilder> createState() => _NotelistveiwbuilderState();
}

class _NotelistveiwbuilderState extends State<Notelistveiwbuilder> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        var notelist = BlocProvider.of<NotesCubit>(context).notes!;
        return ListView.builder(
            itemCount: notelist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Notecard(
                  color: kcolor2,
                  notemodel: notelist[index],
                ),
              );
            });
      },
    );
  }
}
