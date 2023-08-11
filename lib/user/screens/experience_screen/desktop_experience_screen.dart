import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/experience/list_experience.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopExperienceScreen extends StatefulWidget {
  const DesktopExperienceScreen({super.key});

  @override
  State<DesktopExperienceScreen> createState() =>
      _DesktopExperienceScreenState();
}

class _DesktopExperienceScreenState extends State<DesktopExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 526,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 2500),
                child: Text("Experience",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Container(
                height: 425,
                child: ListView.builder(
                    itemCount: listExperience().length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      // experience 1
                      var dateExp1 = listExperience()[index].dateExp1!;
                      var companyExp1 = listExperience()[index].companyExp1!;
                      var jobExp1 = listExperience()[index].jobExp1!;
                      var workOneExp1 = listExperience()[index].workOneExp1!;
                      var workTwoExp1 = listExperience()[index].workTwoExp1!;
                      var workThreeExp1 =
                          listExperience()[index].workThreeExp1!;

                      //experience 2
                      var dateExp2 = listExperience()[index].dateExp2!;
                      var companyExp2 = listExperience()[index].companyExp2!;
                      var jobExp2 = listExperience()[index].jobExp2!;
                      var workOneExp2 = listExperience()[index].workOneExp2!;
                      var workTwoExp2 = listExperience()[index].workTwoExp2!;
                      var workThreeExp2 =
                          listExperience()[index].workThreeExp2!;

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 200),
                        child: FadeInDown(
                          duration: const Duration(milliseconds: 7500),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: []),
                              height: 425,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      // garis hitam
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            23, 0, 0, 0),
                                        child: Container(
                                          height: 375,
                                          width: 2,
                                          decoration: const BoxDecoration(
                                              color: Colors.black),
                                        ),
                                      ),
                                      // buletan warna hitam pertama
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            18.5, 0, 0, 0),
                                        child: FadeInLeft(
                                          duration: const Duration(
                                              milliseconds: 7500),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      //text experience pertama
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 0, 0, 0),
                                        child: Container(
                                          width: 450,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(dateExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(companyExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        )),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(jobExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workOneExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workTwoExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workThreeExp1,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      //buletan warna hitam kedua
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            18.5, 200, 0, 0),
                                        child: FadeInLeft(
                                          duration: const Duration(
                                              milliseconds: 7500),
                                          child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      //text experience pertama
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 195, 0, 0),
                                        child: Container(
                                          width: 450,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //tanggal
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(dateExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              // nama company
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(companyExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                          fontSize: 12,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        )),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              // posisi
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(jobExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              // work experience 1
                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workOneExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              // work experience 2

                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workTwoExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              // work experience 3

                                              FadeIn(
                                                duration: const Duration(
                                                    milliseconds: 7500),
                                                child: Text(workThreeExp2,
                                                    style: UtilsStyle()
                                                        .robotoStyle
                                                        .copyWith(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
