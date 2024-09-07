import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/addfavnote/fav_cubit.dart';
import 'package:note_it/cubits/addtrashnote/addtrashnote_cubit.dart';

import 'package:note_it/models/notemodel.dart';

class Showdialogbody extends StatefulWidget {
  const Showdialogbody({
    super.key,
    required this.notemodel,
  });
  final Notemodel notemodel;

  @override
  State<Showdialogbody> createState() => _ShowdialogbodyState();
}

class _ShowdialogbodyState extends State<Showdialogbody> {
  @override
  Widget build(BuildContext context) {
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
                DateTime now = DateTime.now();
                var favnote = Notemodel(
                    title: widget.notemodel.title,
                    desc: widget.notemodel.desc,
                    date: DateFormat('MMMM dd').format(now));
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
              onPressed: () {
                DateTime now = DateTime.now();
                var trashnote = Notemodel(
                    title: widget.notemodel.title,
                    desc: widget.notemodel.desc,
                    date: DateFormat('MMMM dd').format(now));
                BlocProvider.of<AddtrashnoteCubit>(context)
                    .addtrashnote(trashnote);
              },
              child: const Text('move note to trash'),
            ),
          ],
        ),
      ),
    );
  }
}
