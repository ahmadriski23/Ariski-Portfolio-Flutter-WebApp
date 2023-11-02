// ignore_for_file: deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/list/experience/list_experience.dart';

class TabletExperienceScreen extends StatefulWidget {
  const TabletExperienceScreen({super.key});

  @override
  State<TabletExperienceScreen> createState() => _TabletExperienceScreenState();
}
// * METHOD FOR TO LINK CERTIFICATE

Future<void> linkCompanyUrl(String url) async {
  url = url;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// * METHOD AGAR HOVER BUTTON LINK SATU PER SATU
List<bool> isHoveredList =
    List.generate(listExperience().length, (index) => false);

class _TabletExperienceScreenState extends State<TabletExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: SizedBox(
                  height: 285,
                  child: GridView.builder(
                      itemCount: listExperience().length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 31 / 14),
                      itemBuilder: (context, index) {
                        var job = listExperience()[index].job;
                        var image = listExperience()[index].image;
                        var date = listExperience()[index].date;
                        var duration = listExperience()[index].duration;
                        var location = listExperience()[index].location;
                        var company = listExperience()[index].company;
                        var link = listExperience()[index].link;
                        return FadeInDown(
                          duration: const Duration(milliseconds: 2500),
                          child: Container(
                            height: 170,
                            width: 450,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 2),
                                  color: Colors.grey.shade800,
                                  blurRadius: 9,
                                )
                              ],
                              border: Border.all(width: 1, color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 65,
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage('$image'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  SizedBox(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          job!,
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          children: [
                                            MouseRegion(
                                                onEnter: (_) {
                                                  setState(
                                                    () {
                                                      isHoveredList[index] =
                                                          true;
                                                    },
                                                  );
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    isHoveredList[index] =
                                                        false;
                                                  });
                                                },
                                                child: InkWell(
                                                  onTap: () {
                                                    linkCompanyUrl(link!);
                                                  },
                                                  child: isHoveredList[index]
                                                      ? AnimatedContainer(
                                                          duration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: Colors
                                                                .grey.shade400,
                                                          ),
                                                          child: Text(
                                                            company!,
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        )
                                                      : Text(
                                                          company!,
                                                          style: GoogleFonts
                                                              .poppins(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            fontSize: 13,
                                                            color: Colors
                                                                .grey.shade800,
                                                          ),
                                                        ),
                                                )),
                                            const SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              '•',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey.shade500,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              location!,
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          date!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '~',
                                              style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              duration!,
                                              style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
