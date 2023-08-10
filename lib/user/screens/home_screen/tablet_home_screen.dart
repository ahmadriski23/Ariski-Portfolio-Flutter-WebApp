import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';

class TabletHomeScreen extends StatefulWidget {
  const TabletHomeScreen({Key? key}) : super(key: key);

  @override
  State<TabletHomeScreen> createState() => _TabletHomeScreenState();
}

class _TabletHomeScreenState extends State<TabletHomeScreen> {
  //method url to email
  Future<void> launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'ahmadriski.work@gmail.com',
        query: 'subject=&body=');

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      log('Could not launch $params');
    }
  }

  bool _isHovered = false;

  // method text agar berubah warna
  void setIsHovered(bool value) {
    _isHovered = value;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 525,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: Column(
            children: [
              Stack(children: [
                // halaman stack
                Container(
                  height: 500,
                ),
                // kotak panjang berwarna
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    35,
                    15,
                    35,
                    0,
                  ),
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 900),
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: UtilsColor.kPrimaryColor,
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
                // profile picture - tengah
                Positioned(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: ElasticInDown(
                            duration: const Duration(milliseconds: 4000),
                            child: Container(
                              height: 395,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),

                // text nama dan summary - bagian kiri
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 205, 0, 0),
                  child: Container(
                    height: 225,
                    width: 350,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1400),
                          child: Container(
                            child: Text(
                              'Ahmad Riski,',
                              style: GoogleFonts.rowdies(
                                  textStyle: const TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        FadeInLeft(
                          duration: const Duration(milliseconds: 1900),
                          child: Container(
                            child: Text(
                              'Based in Bandung, Indonesia, I am a Flutter Developer and Full Stack Developer with over 1 years experience develop website and apps.',
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // button lets talk - bagian kiri
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 325, 0, 0),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.grab,
                    onEnter: (_) {
                      setState(() {
                        _isHovered = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        _isHovered = false;
                      });
                    },
                    child: FadeInLeft(
                      duration: const Duration(milliseconds: 1900),
                      child: Container(
                        height: 35,
                        width: 105,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isHovered
                                  ? Colors.white
                                  : UtilsColor.kPrimaryColor,
                            ),
                            onPressed: () {
                              launchEmailSubmission();
                            },
                            child: Text(
                              'Let`s Talk',
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 10.0,
                              )),
                            )),
                      ),
                    ),
                  ),
                ),
                // text quotes di kanan
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    225,
                    80,
                    0,
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FadeInRight(
                          duration: const Duration(milliseconds: 2400),
                          child: Container(
                            height: 50,
                            width: 250,
                            child: DefaultTextStyle(
                              style: GoogleFonts.spaceGrotesk(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    textAlign: TextAlign.center,
                                    '"If you`re going to do something new or innovative, you have to be willing to accept misconceptions."',
                                    speed: const Duration(milliseconds: 150),
                                  ),
                                ],
                                pause: const Duration(seconds: 15),
                                displayFullTextOnTap: true,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // text client, project - bagian kanan
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FadeInRight(
                        duration: const Duration(milliseconds: 2900),
                        child: Container(
                          width: 350,
                          height: 160,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text("10+",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Complete Project",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 8.0,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("99%",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Problem Solving",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 8.0,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("95%",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Satisfied Clients",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 8.0,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // widget text berjalan
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 395, 0, 0),
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 900),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: UtilsColor.kPrimaryColor,
                      ),
                      child: Center(
                        child: Marquee(
                          text:
                              'Full Stack Developer               ✧               Android Developer               ✧               Flutter Developer             ✧               ',
                          style: GoogleFonts.eduSaBeginner(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                          scrollAxis: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          blankSpace: 10.0,
                          velocity: 100.0,
                          pauseAfterRound: const Duration(seconds: 1),
                          startPadding: 500.0,
                          accelerationDuration: const Duration(seconds: 1),
                          accelerationCurve: Curves.linear,
                          decelerationDuration:
                              const Duration(milliseconds: 300),
                          decelerationCurve: Curves.easeOut,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
