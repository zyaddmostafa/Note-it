import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/helpers/custom_textfield.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/widgets/editnoteviewbody.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Editnote extends StatefulWidget {
  const Editnote({super.key});
  static String id = keditnote;

  @override
  State<Editnote> createState() => _EditnoteState();
}

class _EditnoteState extends State<Editnote> {
  Notemodel? editnote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit note'),
        ),
        body: Editnoteviewbody(
          notemodel: editnote!,
        ));
  }
}
