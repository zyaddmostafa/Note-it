import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/addfavnote/fav_cubit.dart';
import 'package:note_it/models/notemodel.dart';

class Showdialogbody extends StatelessWidget {
  const Showdialogbody({
    super.key,
    required this.notemodel,
  });
  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    var favnote = notemodel;
    return Center(
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            color: kcolor2, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AddFavNoteCubit>(context).addfavnote(favnote);
              },
              child: const Text('move note to fav'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('move note to hidden'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('move note to trash'),
            ),
          ],
        ),
      ),
    );
  }
}
