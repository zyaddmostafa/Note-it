import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/helpers/custom_textfield.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/helpers/passowrd_textfield.dart';
import 'package:note_it/views/mynotes.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static String id = klogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
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
                left: 130,
                top: 150,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                            'assets/images/document_notes_file_archive_pushpin_icon_149704.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'NOTE-IT',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
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
              Positioned(
                top: 500,
                left: 60,
                child: Column(
                  children: [
                    const CustomTextfield(
                        hint: 'Email', icon: Icon(Icons.email)),
                    const SizedBox(
                      height: 25,
                    ),
                    const PassowrdTextfield(
                        hint: 'Password', icon: Icon(Icons.lock)),
                    const SizedBox(
                      height: 25,
                    ),
                    Custombuttom(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Mynotes.id);
                      },
                      buttomname: 'log-in',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
