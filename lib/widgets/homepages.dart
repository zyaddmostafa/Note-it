import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';

class Homepages extends StatelessWidget {
  const Homepages({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(height: 400, child: Image.asset(image)),
        Text(
          title,
          style: const TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16, color: kcolor3),
        ),
      ],
    );
  }
}
