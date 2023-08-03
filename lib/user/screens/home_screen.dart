import 'package:ariski_portfolio/service/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ChangeNotifier {
  bool _isHovered = false;
  void setIsHovered(bool value) {
    _isHovered = value;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: Column(
            children: [
              Stack(children: [
                // halaman
                Container(
                  height: 500,
                ),
                // kotak panjang
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    65,
                    15,
                    65,
                    0,
                  ),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ServiceColor.kPrimaryColor,
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),
                // profile picture
                Positioned(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Container(
                            height: 550,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                // widget text berjalan
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 550, 0, 0),
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: ServiceColor.kPrimaryColor,
                    ),
                    child: Center(
                      child: Marquee(
                        text:
                            'Full Stack Developer               ✧               Android Developer               ✧               Flutter Developer             ✧               ',
                        style: GoogleFonts.eduSaBeginner(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        )),
                        scrollAxis: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        blankSpace: 10.0,
                        velocity: 100.0,
                        pauseAfterRound: Duration(seconds: 1),
                        startPadding: 500.0,
                        accelerationDuration: Duration(seconds: 1),
                        accelerationCurve: Curves.linear,
                        decelerationDuration: Duration(milliseconds: 300),
                        decelerationCurve: Curves.easeOut,
                      ),
                    ),
                  ),
                ),
                // text nama dan summary - bagian kiri
                Padding(
                  padding: const EdgeInsets.fromLTRB(75, 255, 0, 0),
                  child: Container(
                    height: 225,
                    width: 450,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Ahmad Riski,',
                            style: GoogleFonts.rowdies(
                                textStyle: TextStyle(
                              fontSize: 65,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Based in Bandung, Indonesia, I am a Flutter Developer and Full Stack Developer with over 1 years experience develop website and apps.',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // button lets talk
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
                    child: Container(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _isHovered
                                ? Colors.white
                                : ServiceColor.kPrimaryColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Let`s Talk',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 13.0,
                            )),
                          )),
                    ),
                  ),
                ),
                // text client, project - bagian kanan
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 240, 150, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 450,
                        height: 250,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text("10+",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )),
                                  Text("Complete Project",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text("99%",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )),
                                  Text("Problem Solving",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text("95%",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )),
                                  Text("Satisfied Clients",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15.0,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ],
          ),
        ));
  }
}
