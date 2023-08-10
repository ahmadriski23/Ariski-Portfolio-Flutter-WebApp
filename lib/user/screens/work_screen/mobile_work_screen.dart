import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/user/widgets/work_screen/desktop_screen/footer_desktop_widget.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/text_style.dart';
import '../../widgets/work_screen/mobile_screen/portfolio_mobile_widget_v1.dart';
import '../../widgets/work_screen/tablet_screen.dart/portfolio_tablet_widget_v1.dart';
import '../../widgets/work_screen/tablet_screen.dart/portfolio_tablet_widget_v2.dart';
import '../../widgets/work_screen/tablet_screen.dart/portfolio_tablet_widget_v3.dart';

class MobileWorkScreen extends StatefulWidget {
  const MobileWorkScreen({super.key});

  @override
  State<MobileWorkScreen> createState() => _MobileWorkScreenState();
}

class _MobileWorkScreenState extends State<MobileWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
          height: 1050,
          child: Column(
            children: [
              // text featured project
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: BounceInDown(
                  duration: const Duration(milliseconds: 5000),
                  child: Text("Featured Projects",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Container(
                  height: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                                  const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              dividerColor: Colors.transparent,
                              indicatorColor: Colors.transparent,
                              labelStyle: UtilsStyle().robotoStyle.copyWith(
                                    fontSize: 9,
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
                          PortfolioMobileWidgetVolume1(),
                          PortfolioTabletWidgetVolume2(),
                          PortfolioTabletWidgetVolume3(),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              //view tabbar
              const Spacer(),
              // footer
              const FooterDesktopWidget(),
            ],
          )),
    );
  }
}
