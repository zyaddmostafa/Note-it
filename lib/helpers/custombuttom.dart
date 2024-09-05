import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom(
      {super.key,
      required this.buttomname,
      this.onTap,
      this.islodaing = false,
      this.h = 50,
      this.v = 10});
  final dynamic buttomname;
  final void Function()? onTap;
  final bool islodaing;
  final double h, v;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(
          horizontal: h,
          vertical: v,
        ),
        decoration: BoxDecoration(
            color: kcolor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: islodaing
              ? const CircularProgressIndicator(
                  color: kcolor2,
                )
              : Text(
                  buttomname,
                  style: const TextStyle(fontSize: 16),
                ),
        ),
      ),
    );
  }
}
