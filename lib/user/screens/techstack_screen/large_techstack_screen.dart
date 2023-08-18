import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/techstack/list_techstack.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeTechstackScreen extends StatefulWidget {
  const LargeTechstackScreen({super.key});

  @override
  State<LargeTechstackScreen> createState() => _LargeTechstackScreenState();
}

class _LargeTechstackScreenState extends State<LargeTechstackScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
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
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Container(
                  height: 500,
                  child: GridView.builder(
                      itemCount: listTechstack().length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 16 / 9,
                        crossAxisCount: 6,
                        mainAxisSpacing: 35,
                        crossAxisSpacing: 35,
                      ),
                      itemBuilder: (context, index) {
                        var imageLogo = listTechstack()[index].imageLogo;
                        var techStack = listTechstack()[index].techStack;
                        return Container(
                          height: 85,
                          width: 175,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 248, 247, 247)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
