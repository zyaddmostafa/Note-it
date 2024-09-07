import 'package:flutter/material.dart';
import 'package:note_it/constants.dart';
import 'package:note_it/helpers/custombuttom.dart';
import 'package:note_it/views/mynotes.dart';
import 'package:note_it/widgets/homepages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Appinfo extends StatefulWidget {
  const Appinfo({super.key});
  static String id = kappinfo;

  @override
  State<Appinfo> createState() => _AppinfoState();
}

class _AppinfoState extends State<Appinfo> {
  final _controller = PageController();
  int currtentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currtentindex = value;
                  });
                },
                controller: _controller,
                children: const [
                  Homepages(
                    image: 'assets/images/clip_1060.png',
                    title: 'Mange your\nnotes easily',
                    subtitle:
                        'A completely easy way to manage and customize\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tyour notes',
                  ),
                  Homepages(
                    image: 'assets/images/clip_chatting_with_girlfriend_1.png',
                    title: 'Organize your \n\t\t\t\t\t thougts',
                    subtitle: 'Most beautiful notes taking application',
                  ),
                  Homepages(
                    image: 'assets/images/clip_1026.png',
                    title: 'Create cards and \n\t\t\t\teasy styling',
                    subtitle:
                        'Making your content legible has never been easier',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  dotColor: kcolor3,
                  activeDotColor: kcolor,
                  dotHeight: 10,
                  dotWidth: 10),
            ),
            const SizedBox(
              height: 40,
            ),
            Custombuttom(
              buttomname: currtentindex == 2 ? 'Get start' : 'Next',
              onTap: () {
                if (currtentindex != 2) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceOut,
                  );
                } else {
                  Navigator.pushReplacementNamed(context, Mynotes.id);
                }
              },
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
