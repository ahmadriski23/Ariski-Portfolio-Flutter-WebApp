import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/listPortfolio.dart';
import 'package:ariski_portfolio/service/color.dart';
import 'package:ariski_portfolio/service/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // text featured project
              FadeInDown(
                duration: Duration(milliseconds: 1000),
                child: Text("Featured Projects",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 50.0,
              ),
              FadeInDown(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 550,
                  child: ListView.builder(
                    itemCount: listPortfolio().length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var appName = listPortfolio()[index].appName!;
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: size.width,
                          height: 550,
                          child: Stack(
                            children: [
                              // Gambar dengan efek hover berwarna
                              MouseRegion(
                                cursor: SystemMouseCursors.grabbing,
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
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(85, 0, 85, 0),
                                  child: Container(
                                    width: size.width,
                                    height: 550,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            listPortfolio()[index].image!),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Overlay teks saat hover diarahkan
                              IgnorePointer(
                                  // Mencegah efek hover aktif ketika mouse berada di atas overlay
                                  ignoring: true,
                                  child: _isHovered
                                      ? Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              85, 0, 85, 0),
                                          child: Container(
                                            height: 550,
                                            width: size.width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Colors.black
                                                  .withOpacity(0.85),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(35.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // judul project
                                                  Center(
                                                    child: Text(
                                                      listPortfolio()[index]
                                                          .appName!,
                                                      style: ServiceText()
                                                          .poppinsStyle
                                                          .copyWith(
                                                              color: ServiceColor
                                                                  .kPrimaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 35),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 40.0,
                                                  ),
                                                  Text(
                                                    'What is $appName ?',
                                                    style: ServiceText()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Text(
                                                    listPortfolio()[index]
                                                        .description!,
                                                    style: ServiceText()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 40.0,
                                                  ),
                                                  Text(
                                                    'Technologies',
                                                    style: ServiceText()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 23,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 20.0,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie1!,
                                                        style: ServiceText()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 20.0,
                                                      ),
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie2!,
                                                        style: ServiceText()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 20.0,
                                                      ),
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie3!,
                                                        style: ServiceText()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 20.0,
                                                      ),
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie4!,
                                                        style: ServiceText()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 40.0,
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          MdiIcons.github,
                                                          size: 45,
                                                          color: ServiceColor
                                                              .kPrimaryColor,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          MdiIcons.googlePlay,
                                                          size: 45,
                                                          color: ServiceColor
                                                              .kPrimaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      : SizedBox()),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
