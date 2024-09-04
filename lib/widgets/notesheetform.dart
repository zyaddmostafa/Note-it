import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/widgets/notestextfield.dart';

class Notesheetform extends StatefulWidget {
  const Notesheetform({super.key});

  @override
  State<Notesheetform> createState() => _NotesheetformState();
}

class _NotesheetformState extends State<Notesheetform> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, decs;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          NotesTextfield(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          NotesTextfield(
            hint: 'description',
            maxlines: 5,
            onSaved: (value) {
              decs = value;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          Custombuttom(
            buttomname: 'Add note',
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
