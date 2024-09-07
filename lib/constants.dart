import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_it/models/optionsmodel.dart';

const String kappinfo = 'appinfo';
const Color kcolor = Color(0xFF7D91FA);
const Color kcolor2 = Colors.white;
const Color kcolor3 = Colors.grey;
const Color kcolor4 = Colors.black;
const String khome = 'home';
const String klogin = 'login';
const String ksignup = 'sginup';
const String kmynotes = 'mynotes';
const String keditnote = 'editnote';
const String kallnotebox = 'notes';
const String kfavebox = 'favnotes';
const String kfavnote = 'favnotes';
List<Optionsmodel> optionbuttom = [
  Optionsmodel(
    name: 'All Note',
    icon: FontAwesomeIcons.solidNoteSticky,
    color: const Color.fromARGB(178, 115, 112, 112),
  ),
  Optionsmodel(
    name: 'Favourite',
    icon: FontAwesomeIcons.star,
    color: Colors.amber,
  ),
  Optionsmodel(
    name: 'Hidden',
    icon: FontAwesomeIcons.eye,
    color: Colors.blue,
  ),
  Optionsmodel(
    name: 'Trash',
    icon: FontAwesomeIcons.trash,
    color: Colors.red,
  ),
];
