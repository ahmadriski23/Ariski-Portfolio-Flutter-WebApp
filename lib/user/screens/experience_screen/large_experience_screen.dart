import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/experience/list_experience.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeExperienceScreen extends StatefulWidget {
  const LargeExperienceScreen({super.key});

  @override
  State<LargeExperienceScreen> createState() => _LargeExperienceScreenState();
}

class _LargeExperienceScreenState extends State<LargeExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 2500),
                child: Text("Experience",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'images/experiences/saptaloka.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'images/experiences/saptaloka.png'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
