import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/techstack/list_techstack.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletTechstackScreen extends StatefulWidget {
  const TabletTechstackScreen({super.key});

  @override
  State<TabletTechstackScreen> createState() => _TabletTechstackScreenState();
}

class _TabletTechstackScreenState extends State<TabletTechstackScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
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
                  height: 475,
                  child: GridView.builder(
                      itemCount: listTechstack().length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 17 / 7,
                        crossAxisCount: 3,
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 40,
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
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.contain,
                                      image: AssetImage('$imageLogo'),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  techStack!,
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      color: Colors.black,
                                      fontSize: 13.5,
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
