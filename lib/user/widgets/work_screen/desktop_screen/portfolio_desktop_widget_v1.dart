import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../data/list/portfolio/list_portfolio_v1.dart';
import '../../../../utils/color.dart';
import '../../../../utils/text_style.dart';

class PortfolioDesktopWidgetVolume1 extends StatefulWidget {
  const PortfolioDesktopWidgetVolume1({super.key});

  @override
  State<PortfolioDesktopWidgetVolume1> createState() =>
      _PortfolioDesktopWidgetVolume1State();
}

class _PortfolioDesktopWidgetVolume1State
    extends State<PortfolioDesktopWidgetVolume1> {
  List<bool> _isHovered = [];

  @override
  void initState() {
    super.initState();
    // hover gambar secara satu per satu
    _isHovered = List.generate(listPortfolioV1().length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 8.5 / 21.5,
            ),
            itemCount: listPortfolioV1().length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var appName = listPortfolioV1()[index].appName!;
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: size.width,
                  height: 600,
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
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 2500),
                            child: Container(
                              width: size.width,
                              height: 600,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    listPortfolioV1()[index].image!,
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
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: FadeIn(
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    child: Container(
                                      height: 550,
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black.withOpacity(0.85),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 5, 12, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // judul project
                                            Center(
                                              child: Text(
                                                listPortfolioV1()[index]
                                                    .appName!,
                                                style: UtilsStyle()
                                                    .poppinsStyle
                                                    .copyWith(
                                                        color: UtilsColor
                                                            .kPrimaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 6.0,
                                            ),
                                            // ask what is project
                                            Text(
                                              'What is $appName ?',
                                              style: UtilsStyle()
                                                  .poppinsStyle
                                                  .copyWith(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 6.0,
                                            ),
                                            // description
                                            Text(
                                              listPortfolioV1()[index]
                                                  .description!,
                                              style: UtilsStyle()
                                                  .poppinsStyle
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 7.0,
                                            ),
                                            // title technologies
                                            Text(
                                              'Technologies',
                                              style: UtilsStyle()
                                                  .poppinsStyle
                                                  .copyWith(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 7.0,
                                            ),
                                            Row(
                                              children: [
                                                // tech 1
                                                Text(
                                                  listPortfolioV1()[index]
                                                      .technologie1!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),

                                                // tech 2
                                                Text(
                                                  listPortfolioV1()[index]
                                                      .technologie2!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),

                                                // tech 3
                                                Text(
                                                  listPortfolioV1()[index]
                                                      .technologie3!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),
                                                Text(
                                                  listPortfolioV1()[index]
                                                      .technologie4!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 2.9,
                                            ),
                                            Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    MdiIcons.github,
                                                    size: 16,
                                                    color: UtilsColor
                                                        .kPrimaryColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 7.0,
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    MdiIcons.googlePlay,
                                                    size: 16,
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
    );
  }
}
