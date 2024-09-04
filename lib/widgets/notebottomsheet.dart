import 'package:flutter/material.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/widgets/notesheetform.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Notebottomsheet extends StatefulWidget {
  const Notebottomsheet({super.key});

  @override
  State<Notebottomsheet> createState() => _NotebottomsheetState();
}

class _NotebottomsheetState extends State<Notebottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Notesheetform()),
    );
  }
}
