import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/cubits/addfavnote/fav_cubit.dart';
import 'package:note_it/cubits/addhiddennote/addhiddennote_cubit.dart';
import 'package:note_it/cubits/addtrashnote/addtrashnote_cubit.dart';
import 'package:note_it/cubits/getfavnotes/getfavnotes_cubit.dart';
import 'package:note_it/cubits/gethiddennote/cubit/gethiddennote_cubit.dart';
import 'package:note_it/cubits/gettrashnote/gettrashnote_cubit.dart';
import 'package:note_it/cubits/notes/cubit/notes_cubit.dart';
import 'package:note_it/models/notemodel.dart';
import 'package:note_it/simplebloc_observer.dart';
import 'package:note_it/views/appinfo.dart';
import 'package:note_it/views/editnote.dart';
import 'package:note_it/views/favnote.dart';
import 'package:note_it/views/hiddennote.dart';
import 'package:note_it/views/mynotes.dart';
import 'package:note_it/views/trashnote.dart';

void main() async {
  Bloc.observer = SimpleblocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kallnotebox);
  await Hive.openBox<Notemodel>(kfavebox);
  await Hive.openBox<Notemodel>(ktrashbox);
  await Hive.openBox<Notemodel>(khiddenbox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotesCubit(),
        ),
        BlocProvider(
          create: (context) => AddFavNoteCubit(),
        ),
        BlocProvider(
          create: (context) => GetfavnotesCubit(),
        ),
        BlocProvider(
          create: (context) => AddtrashnoteCubit(),
        ),
        BlocProvider(
          create: (context) => GettrashnoteCubit(),
        ),
        BlocProvider(
          create: (context) => GethiddennoteCubit(),
        ),
        BlocProvider(
          create: (context) => AddhiddennoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Appinfo.id: (context) => const Appinfo(),
          Mynotes.id: (context) => const Mynotes(),
          Editnote.id: (context) => const Editnote(),
          Favnote.id: (context) => const Favnote(),
          Trashnote.id: (context) => const Trashnote(),
          Hiddennote.id: (context) => const Hiddennote(),
        },
        home: const Appinfo(),
      ),
    );
  }
}
