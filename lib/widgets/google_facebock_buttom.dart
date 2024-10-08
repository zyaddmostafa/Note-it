import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class GoogleFacebockButtom extends StatelessWidget {
  const GoogleFacebockButtom(
      {super.key, required this.buttomname, this.onTap, required this.image});
  final String buttomname;
  final void Function()? onTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        decoration: BoxDecoration(
            color: kcolor2.withOpacity(0.09),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                buttomname,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            Image.asset(
              image,
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
