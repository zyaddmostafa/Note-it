import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield(
      {super.key,
      required this.hint,
      this.onchange,
      this.obscuretext = false,
      this.maxlines = 1,
      this.icon,
      this.sufficicon,
      this.onSaved});
  final String hint;
  final Function(String)? onchange;
  final bool obscuretext;
  final int maxlines;
  final Icon? icon;
  final Icon? sufficicon;
  final Function(String?)? onSaved;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      height: 50,
      child: TextFormField(
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
          suffixIcon: widget.sufficicon,
          suffixIconColor: Colors.black,
          prefixIcon: widget.icon,
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
      ),
    );
  }
}
