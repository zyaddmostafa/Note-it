import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/cubits/getfavnotes/getfavnotes_cubit.dart';
import 'package:note_it/widgets/notecard.dart';

class Favnotelistveiwbuilder extends StatefulWidget {
  const Favnotelistveiwbuilder({
    super.key,
  });

  @override
  State<Favnotelistveiwbuilder> createState() => _NotelistveiwbuilderState();
}

class _NotelistveiwbuilderState extends State<Favnotelistveiwbuilder> {
  @override
  void initState() {
    BlocProvider.of<GetfavnotesCubit>(context).fetchfavnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetfavnotesCubit, GetfavnotesState>(
      builder: (context, state) {
        var favnotelist = BlocProvider.of<GetfavnotesCubit>(context).favnotes!;
        return ListView.builder(
          itemCount: favnotelist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Notecard(
                color: Colors.amber.withOpacity(0.5),
                notemodel: favnotelist[index],
              ),
            );
          },
        );
      },
    );
  }
}
