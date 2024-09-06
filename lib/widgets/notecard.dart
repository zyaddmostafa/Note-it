import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/views/editnote.dart';

class Notecard extends StatelessWidget {
  const Notecard({
    super.key,
    required this.notemodel,
  });
  final Notemodel notemodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                    color: kcolor2, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
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
          },
        );
      },
      onTap: () {
        Navigator.pushNamed(context, Editnote.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: kcolor3),
            borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        color: kcolor2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    notemodel.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  notemodel.date,
                  style: const TextStyle(fontSize: 16, color: kcolor3),
                ),
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
