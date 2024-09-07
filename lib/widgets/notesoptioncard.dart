import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/models/optionsmodel.dart';
import 'package:note_it/views/favnote.dart';
import 'package:note_it/views/mynotes.dart';

class Notesoptioncard extends StatefulWidget {
  const Notesoptioncard(
      {super.key, required this.optionsmodel, required this.currentindex});
  final Optionsmodel optionsmodel;
  final int currentindex;
  @override
  State<Notesoptioncard> createState() => _NotesoptioncardState();
}

bool isselected = false;

class _NotesoptioncardState extends State<Notesoptioncard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isselected = !isselected;
        });
        if (widget.currentindex == 0) {
          Navigator.pushReplacementNamed(context, Mynotes.id);
        }
        if (widget.currentindex == 1) {
          Navigator.pushReplacementNamed(context, Favnote.id);
        }
        if (widget.currentindex == 2) {
          Navigator.pushReplacementNamed(context, Favnote.id);
        }
        if (widget.currentindex == 3) {
          Navigator.pushReplacementNamed(context, Favnote.id);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 0),
              blurRadius: 0.9,
            ),
          ],
          color: isselected ? widget.optionsmodel.color : kcolor2,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: widget.optionsmodel.color,
                child: Icon(
                  widget.optionsmodel.icon,
                  color: kcolor2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  widget.optionsmodel.name,
                  style: TextStyle(
                      color: isselected ? Colors.white : Colors.black,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
