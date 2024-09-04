import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_it/cubits/addnote/cubit/addnote_cubit.dart';
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
    return BlocProvider(
      create: (context) => AddnoteCubit(),
      child: Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: BlocConsumer<AddnoteCubit, AddnoteState>(
            listener: (context, state) {
              if (state is Addnotefaluir) {
                print('Falied ${state.errormessage}');
              }
              if (state is AddnoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is Addnoteloading ? true : false,
                  child: SingleChildScrollView(child: Notesheetform()));
            },
          )),
    );
  }
}
