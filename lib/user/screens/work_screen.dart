import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list_portfolio.dart';
import 'package:ariski_portfolio/user/widgets/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../utils/color.dart';
import '../../utils/text_style.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<bool> _isHovered = [];

  @override
  void initState() {
    super.initState();
    // hover gambar secara satu per satu
    _isHovered = List.generate(listPortfolio().length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 1200,
        child: Column(
          children: [
            // text featured project
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: BounceInDown(
                duration: const Duration(milliseconds: 5000),
                child: Text("Featured Projects",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 550,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 10 / 25,
                  ),
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
                                  _isHovered[index] = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  _isHovered[index] = false;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(85, 0, 85, 0),
                                child: FadeInDown(
                                  duration: const Duration(milliseconds: 2500),
                                  child: Container(
                                    width: size.width,
                                    height: 550,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          listPortfolio()[index].image!,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Overlay teks saat hover diarahkan
                            IgnorePointer(
                                // Mencegah efek hover aktif ketika mouse berada di atas overlay
                                ignoring: true,
                                child: _isHovered[index]
                                    ? Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 0, 85, 0),
                                        child: FadeIn(
                                          duration: const Duration(
                                              milliseconds: 2000),
                                          child: Container(
                                            height: 550,
                                            width: size.width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.black
                                                  .withOpacity(0.85),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
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
                                                      style: UtilsStyle()
                                                          .poppinsStyle
                                                          .copyWith(
                                                              color: UtilsColor
                                                                  .kPrimaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 12.0,
                                                  ),
                                                  // ask what is project
                                                  Text(
                                                    'What is $appName ?',
                                                    style: UtilsStyle()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 12.0,
                                                  ),
                                                  // description
                                                  Text(
                                                    listPortfolio()[index]
                                                        .description!,
                                                    style: UtilsStyle()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 15.0,
                                                  ),
                                                  // title technologies
                                                  Text(
                                                    'Technologies',
                                                    style: UtilsStyle()
                                                        .poppinsStyle
                                                        .copyWith(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Row(
                                                    children: [
                                                      // tech 1
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie1!,
                                                        style: UtilsStyle()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 8.0,
                                                      ),

                                                      // tech 2
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie2!,
                                                        style: UtilsStyle()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 8.0,
                                                      ),

                                                      // tech 3
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie3!,
                                                        style: UtilsStyle()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(
                                                        width: 8.0,
                                                      ),
                                                      Text(
                                                        listPortfolio()[index]
                                                            .technologie4!,
                                                        style: UtilsStyle()
                                                            .poppinsStyle
                                                            .copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          MdiIcons.github,
                                                          size: 22,
                                                          color: UtilsColor
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
                                                          size: 22,
                                                          color: UtilsColor
                                                              .kPrimaryColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox()),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            // footer
            const FooterWidget(),
          ],
        ));
  }
}
