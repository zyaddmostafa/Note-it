import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/simplebloc_observer.dart';
import 'package:note_it/views/appinfo.dart';
import 'package:note_it/views/editnote.dart';
import 'package:note_it/views/home.dart';
import 'package:note_it/views/login.dart';
import 'package:note_it/views/mynotes.dart';
import 'package:note_it/views/signup.dart';

void main() async {
  Bloc.observer = SimpleblocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kallnotebox);
  await Hive.openBox<Notemodel>(kfavebox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Home.id: (context) => const Home(),
          Appinfo.id: (context) => const Appinfo(),
          Login.id: (context) => const Login(),
          Signup.id: (context) => const Signup(),
          Mynotes.id: (context) => const Mynotes(),
          Editnote.id: (context) => const Editnote(),
        },
        home: const Appinfo(),
      ),
    );
  }
}
