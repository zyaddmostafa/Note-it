import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class PassowrdTextfield extends StatefulWidget {
  const PassowrdTextfield({
    super.key,
    required this.hint,
    this.onchange,
    this.maxlines = 1,
    required this.icon,
    this.onSaved,
  });
  final String hint;
  final Function(String)? onchange;
  final Function(String?)? onSaved;
  final int maxlines;
  final Icon icon;

  @override
  State<PassowrdTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<PassowrdTextfield> {
  late bool obscureText;
  @override
  void initState() {
    obscureText = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      height: 50,
      child: TextFormField(
        onSaved: widget.onSaved,
        maxLines: widget.maxlines,
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return 'is required';
          }
        },
        onChanged: widget.onchange,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: obscureText
                  ? const Icon(Icons.remove_red_eye)
                  : const Icon(
                      Icons.remove_red_eye,
                      color: kcolor,
                    )),
          suffixIconColor: kcolor4,
          prefixIcon: widget.icon,
          prefixIconColor: kcolor4,
          labelText: widget.hint,
          hintText: widget.hint,
          hintStyle: const TextStyle(color: kcolor4),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: kcolor)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: kcolor4,
            ),
          ),
        ),
      ),
    );
  }
}
