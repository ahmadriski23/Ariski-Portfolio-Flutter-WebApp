import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/skills/list_technical_skills.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/list/skills/list_soft_skills.dart';
import '../../../utils/text_style.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
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
                  child: Text("Soft Skills",
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
                  height: 200,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 19 / 1.7,
                              crossAxisSpacing: 150),
                      itemCount: listSoftSkill().length,
                      itemBuilder: (context, index) {
                        var softSkills = listSoftSkill()[index].softSkills;

                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              '•  $softSkills',
                              style: UtilsStyle().poppinsStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: UtilsColor.kPrimaryColor,
                                  ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ]),
            ),
            Container(
              child: Column(children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 2500),
                  child: Text("Technical Skills",
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
                  height: 350,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 19 / 1.7,
                              crossAxisSpacing: 150),
                      itemCount: listTechnicalSkills().length,
                      itemBuilder: (context, index) {
                        var technicalSkills =
                            listTechnicalSkills()[index].technicalSkills;

                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Text(
                              '•  $technicalSkills',
                              style: UtilsStyle().poppinsStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: UtilsColor.kPrimaryColor),
                            ),
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
