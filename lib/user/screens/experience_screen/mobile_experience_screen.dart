import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/experience/list_experience.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileExperienceScreen extends StatefulWidget {
  const MobileExperienceScreen({super.key});

  @override
  State<MobileExperienceScreen> createState() => _MobileExperienceScreenState();
}
// * METHOD FOR TO LINK CERTIFICATE

Future<void> linkCompanyUrl(String url) async {
  url = url;
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// * METHOD AGAR HOVER BUTTON LINK SATU PER SATU
List<bool> isHoveredList =
    List.generate(listExperience().length, (index) => false);

class _MobileExperienceScreenState extends State<MobileExperienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 375,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 2500),
                child: Text("Experience",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  height: 315,
                  child: ListView.builder(
                      itemCount: listExperience().length,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var job = listExperience()[index].job;
                        var image = listExperience()[index].image;
                        var date = listExperience()[index].date;
                        var duration = listExperience()[index].duration;
                        var location = listExperience()[index].location;
                        var company = listExperience()[index].company;
                        var link = listExperience()[index].link;
                        return Padding(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            15,
                            0,
                            0,
                          ),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
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
                              padding: const EdgeInsets.fromLTRB(4, 6, 4, 6),
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
                                    width: 3.0,
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
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
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
                                                                        12,
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
                                                            fontSize: 12,
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
                                                fontSize: 14,
                                                color: Colors.grey.shade500,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              location!,
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          date!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
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
                                                fontSize: 12,
                                                color: Colors.grey.shade800,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              duration!,
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
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
