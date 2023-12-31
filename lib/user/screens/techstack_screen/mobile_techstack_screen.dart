import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/techstack/list_techstack.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileTechstackScreen extends StatefulWidget {
  const MobileTechstackScreen({super.key});

  @override
  State<MobileTechstackScreen> createState() => _MobileTechstackScreenState();
}

class _MobileTechstackScreenState extends State<MobileTechstackScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 675,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              child: Column(children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 2500),
                  child: Text("Tech Stack",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                SizedBox(
                  height: 600,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listTechstack().length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 13 / 6,
                        crossAxisCount: 2,
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
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(1, 3),
                                    color: Colors.grey,
                                    blurRadius: 5,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromARGB(255, 248, 247, 247)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 85,
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
                                      fontSize: 8.5,
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
