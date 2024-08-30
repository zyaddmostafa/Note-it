import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/views/login.dart';
import 'package:note_it/views/signup.dart';
import 'package:note_it/widgets/google_facebock_buttom.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String id = khome;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 230,
            top: 50,
            child: Container(
              height: 250,
              width: 240,
              decoration: const BoxDecoration(
                color: kcolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(320),
                  bottomLeft: Radius.circular(320),
                ),
              ),
            ),
          ),
          Positioned(
            left: 80,
            top: 130,
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      'https://cdn.icon-icons.com/icons2/2474/PNG/512/document_notes_file_archive_pushpin_icon_149704.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'NOTE-IT',
                  style: TextStyle(fontSize: 12),
                ),
                const Row(
                  children: [
                    Text(
                      'Stay ',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'centerd',
                      style: TextStyle(fontSize: 25, color: kcolor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Login.id);
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Signup.id);
                  },
                  child: const Text(
                    'Create new account',
                    style: TextStyle(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const GoogleFacebockButtom(
                    buttomname: 'Sign in with Google',
                    image: 'assets/images/Google_Icons-09-512.webp'),
                const SizedBox(
                  height: 10,
                ),
                const GoogleFacebockButtom(
                    buttomname: 'Sign in with Facebook',
                    image: 'assets/images/facebook-logo-icon-free-png.webp'),
              ],
            ),
          ),
          Positioned(
            top: 430,
            left: -100,
            child: Container(
              height: 200,
              width: 180,
              decoration: const BoxDecoration(
                color: kcolor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(300),
                  bottomRight: Radius.circular(300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
