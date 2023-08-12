import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/user/widgets/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/color.dart';
import '../../../utils/text_style.dart';
import '../../widgets/work_screen/large_screen/portfolio_widget_large_v1.dart';
import '../../widgets/work_screen/large_screen/portfolio_widget_large_v2.dart';
import '../../widgets/work_screen/large_screen/portfolio_widget_large_v3.dart';

class LargeWorkScreen extends StatefulWidget {
  const LargeWorkScreen({super.key});

  @override
  State<LargeWorkScreen> createState() => _LargeWorkScreenState();
}

class _LargeWorkScreenState extends State<LargeWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
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
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Container(
                  height: 650,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TabBar(
                              splashBorderRadius: BorderRadius.circular(40),
                              unselectedLabelColor: Colors.white,
                              labelColor: UtilsColor.kPrimaryColor,
                              isScrollable: true,
                              labelPadding:
                                  const EdgeInsets.fromLTRB(75, 0, 75, 0),
                              dividerColor: Colors.transparent,
                              indicatorColor: Colors.transparent,
                              labelStyle: UtilsStyle().robotoStyle.copyWith(
                                    fontSize: 14,
                                  ),
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                const Tab(text: 'Mobile Apps V1'),
                                const Tab(
                                  text: 'Mobile Apps V2',
                                ),
                                const Tab(
                                  text: 'Mobile Apps V3',
                                ),
                              ]),
                        ),
                      ),
                      const Expanded(
                        child: TabBarView(children: [
                          // widget portfolio work screen
                          // ada di file work_screen -> widgets > work_screen
                          PortfolioLargeWidgetVolume1(),
                          PortfolioLargeWidgetVolume2(),
                          PortfolioLargeWidgetVolume3(),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),
              // footer
              const FooterWidget(),
            ],
          )),
    );
  }
}
