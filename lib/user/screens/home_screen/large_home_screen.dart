import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeHomeScreen extends StatefulWidget {
  const LargeHomeScreen({Key? key}) : super(key: key);

  @override
  State<LargeHomeScreen> createState() => _LargeHomeScreenState();
}

class _LargeHomeScreenState extends State<LargeHomeScreen> {
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
    return SizedBox(
        height: 675,
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
                    65,
                    15,
                    65,
                    0,
                  ),
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 900),
                    child: Container(
                      height: 200,
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
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 4000),
                            child: Container(
                              height: 550,
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
                  padding: const EdgeInsets.fromLTRB(75, 255, 0, 0),
                  child: Container(
                    height: 225,
                    width: 450,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          duration: const Duration(milliseconds: 1400),
                          child: SizedBox(
                            child: Text(
                              'Ahmad Riski,',
                              style: GoogleFonts.rowdies(
                                  textStyle: const TextStyle(
                                fontSize: 65,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),
                        FadeInDown(
                          duration: const Duration(milliseconds: 1900),
                          child: SizedBox(
                            child: Text(
                              'Based in Bandung, Indonesia, I am a Flutter Developer and Full Stack Developer with over 1 years experience develop website and apps.',
                              style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                fontSize: 15,
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
                  padding: const EdgeInsets.fromLTRB(75, 450, 0, 0),
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
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 1900),
                      child: SizedBox(
                        height: 35,
                        width: 120,
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
                                fontSize: 13.0,
                              )),
                            )),
                      ),
                    ),
                  ),
                ),
                // text quotes - bagian kanan
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    275,
                    210,
                    0,
                  ),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FadeInDown(
                          duration: const Duration(milliseconds: 2400),
                          child: SizedBox(
                            height: 100,
                            width: 325,
                            child: DefaultTextStyle(
                              style: GoogleFonts.spaceGrotesk(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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
                  padding: const EdgeInsets.fromLTRB(0, 230, 75, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 2900),
                        child: Container(
                          width: 450,
                          height: 250,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("10+",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Complete Project",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25.0,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("99%",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Problem Solving",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25.0,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Text("95%",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                    Text("Satisfied Clients",
                                        style: GoogleFonts.roboto(
                                          textStyle: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.0,
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
                  padding: const EdgeInsets.fromLTRB(0, 550, 0, 0),
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 900),
                    child: Container(
                      height: 65,
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
                            fontSize: 30,
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
