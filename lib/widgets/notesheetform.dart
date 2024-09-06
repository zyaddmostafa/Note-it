import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_it/cubits/addnote/addnote_cubit.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/models/notemodel.dart';
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
          BlocBuilder<AddnoteCubit, AddnoteState>(
            builder: (context, state) {
              return Custombuttom(
                islodaing: state is Addnoteloading ? true : false,
                buttomname: 'Add note',
                onTap: () {
                  DateTime now = DateTime.now();
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var note = Notemodel(
                        title: title!,
                        desc: decs!,
                        date: DateFormat('MMMM dd').format(now));
                    BlocProvider.of<AddnoteCubit>(context).addnote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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
