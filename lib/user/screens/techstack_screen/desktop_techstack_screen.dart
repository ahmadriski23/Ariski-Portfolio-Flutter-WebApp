import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/techstack/list_techstack.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopTechstackScreen extends StatefulWidget {
  const DesktopTechstackScreen({super.key});

  @override
  State<DesktopTechstackScreen> createState() => _DesktopTechstackScreenState();
}

class _DesktopTechstackScreenState extends State<DesktopTechstackScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            Container(
              child: Column(children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 2500),
                  child: Text("Tech Stack",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Container(
                  height: 250,
                  child: GridView.builder(
                      itemCount: listTechstack().length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 16 / 9,
                        crossAxisCount: 6,
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 25,
                      ),
                      itemBuilder: (context, index) {
                        var imageLogo = listTechstack()[index].imageLogo;
                        var techStack = listTechstack()[index].techStack;
                        return FadeInDown(
                          duration: const Duration(milliseconds: 2500),
                          child: Container(
                            height: 85,
                            width: 175,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 3),
                                    color: Colors.grey,
                                    blurRadius: 5,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 248, 247, 247)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage('$imageLogo'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  techStack!,
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
