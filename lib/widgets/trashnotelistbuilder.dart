import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/cubits/gettrashnote/gettrashnote_cubit.dart';
import 'package:note_it/widgets/notecard.dart';

class Trashnotelistveiwbuilder extends StatefulWidget {
  const Trashnotelistveiwbuilder({
    super.key,
  });

  @override
  State<Trashnotelistveiwbuilder> createState() => _NotelistveiwbuilderState();
}

class _NotelistveiwbuilderState extends State<Trashnotelistveiwbuilder> {
  @override
  void initState() {
    BlocProvider.of<GettrashnoteCubit>(context).fetchfavnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GettrashnoteCubit, GettrashnoteState>(
      builder: (context, state) {
        var favnotelist = BlocProvider.of<GettrashnoteCubit>(context).favnotes!;
        return ListView.builder(
          itemCount: favnotelist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Notecard(
                notemodel: favnotelist[index],
              ),
            );
          },
        );
      },
    );
  }
}
