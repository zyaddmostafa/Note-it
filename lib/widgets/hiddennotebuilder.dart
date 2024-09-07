import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/cubits/gethiddennote/cubit/gethiddennote_cubit.dart';
import 'package:note_it/widgets/notecard.dart';

class Hiddennotelistveiwbuilder extends StatefulWidget {
  const Hiddennotelistveiwbuilder({
    super.key,
  });

  @override
  State<Hiddennotelistveiwbuilder> createState() => _NotelistveiwbuilderState();
}

class _NotelistveiwbuilderState extends State<Hiddennotelistveiwbuilder> {
  @override
  void initState() {
    BlocProvider.of<GethiddennoteCubit>(context).fetchhiddennotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GethiddennoteCubit, GethiddennoteState>(
      builder: (context, state) {
        var hiddenlist =
            BlocProvider.of<GethiddennoteCubit>(context).hiddennotes!;
        return ListView.builder(
          itemCount: hiddenlist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Notecard(
                color: Colors.blue.withOpacity(0.5),
                notemodel: hiddenlist[index],
              ),
            );
          },
        );
      },
    );
  }
}
