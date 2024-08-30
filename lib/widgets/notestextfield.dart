import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class NotesTextfield extends StatefulWidget {
  const NotesTextfield(
      {super.key,
      required this.hint,
      this.onchange,
      this.obscuretext = false,
      this.maxlines = 1,
      this.onSaved});
  final String hint;
  final Function(String)? onchange;
  final bool obscuretext;
  final int maxlines;

  final Function(String?)? onSaved;

  @override
  State<NotesTextfield> createState() => _NotesTextfieldState();
}

class _NotesTextfieldState extends State<NotesTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      maxLines: widget.maxlines,
      obscureText: widget.obscuretext,
      validator: (value) {
        if (value!.isEmpty) {
          return 'is required';
        }
      },
      onChanged: widget.onchange,
      decoration: InputDecoration(
        labelText: widget.hint,
        prefixIconColor: Colors.black,
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: kcolor)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
