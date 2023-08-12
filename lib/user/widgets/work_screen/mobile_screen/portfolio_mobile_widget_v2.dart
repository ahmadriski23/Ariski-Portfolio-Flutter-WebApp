import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../data/list/portfolio/list_portfolio_v2.dart';
import '../../../../utils/color.dart';
import '../../../../utils/text_style.dart';

class PortfolioMobileWidgetVolume2 extends StatefulWidget {
  const PortfolioMobileWidgetVolume2({super.key});

  @override
  State<PortfolioMobileWidgetVolume2> createState() =>
      _PortfolioMobileWidgetVolume2State();
}

class _PortfolioMobileWidgetVolume2State
    extends State<PortfolioMobileWidgetVolume2> {
  List<bool> _isHovered = [];

  @override
  void initState() {
    super.initState();
    // hover gambar secara satu per satu
    _isHovered = List.generate(listPortfolioV2().length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 30,
              childAspectRatio: 16 / 9,
            ),
            itemCount: listPortfolioV2().length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              var appName = listPortfolioV2()[index].appName!;
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
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                                    listPortfolioV2()[index].image!,
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
                                            12, 10, 12, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // judul project
                                            Center(
                                              child: Text(
                                                listPortfolioV2()[index]
                                                    .appName!,
                                                style: UtilsStyle()
                                                    .poppinsStyle
                                                    .copyWith(
                                                        color: UtilsColor
                                                            .kPrimaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 8),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            // ask what is project
                                            Text(
                                              'What is $appName ?',
                                              style: UtilsStyle()
                                                  .poppinsStyle
                                                  .copyWith(
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 7.0,
                                            ),
                                            // description
                                            Text(
                                              listPortfolioV2()[index]
                                                  .description!,
                                              style: UtilsStyle()
                                                  .poppinsStyle
                                                  .copyWith(
                                                      fontSize: 6,
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
                                                      fontSize: 6,
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
                                                  listPortfolioV2()[index]
                                                      .technologie1!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 6,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),

                                                // tech 2
                                                Text(
                                                  listPortfolioV2()[index]
                                                      .technologie2!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 6,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),

                                                // tech 3
                                                Text(
                                                  listPortfolioV2()[index]
                                                      .technologie3!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 6,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  width: 8.0,
                                                ),
                                                Text(
                                                  listPortfolioV2()[index]
                                                      .technologie4!,
                                                  style: UtilsStyle()
                                                      .poppinsStyle
                                                      .copyWith(
                                                          fontSize: 6,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    MdiIcons.github,
                                                    color: UtilsColor
                                                        .kPrimaryColor,
                                                    size: 12,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 12.0,
                                                ),
                                                Container(
                                                  child: Icon(
                                                    MdiIcons.googlePlay,
                                                    color: UtilsColor
                                                        .kPrimaryColor,
                                                    size: 12,
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
