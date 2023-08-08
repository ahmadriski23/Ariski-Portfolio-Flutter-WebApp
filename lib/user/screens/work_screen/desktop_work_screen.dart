import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/user/widgets/footer_widget.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/text_style.dart';
import '../../widgets/work_screen/desktop_screen/portfolio_desktop_widget_v1.dart';
import '../../widgets/work_screen/desktop_screen/portfolio_desktop_widget_v2.dart';
import '../../widgets/work_screen/desktop_screen/portfolio_desktop_widget_v3.dart';

class DesktopWorkScreen extends StatefulWidget {
  const DesktopWorkScreen({super.key});

  @override
  State<DesktopWorkScreen> createState() => _DesktopWorkScreenState();
}

class _DesktopWorkScreenState extends State<DesktopWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
          height: 700,
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
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 450,
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
                            labelPadding: EdgeInsets.fromLTRB(75, 0, 75, 0),
                            dividerColor: Colors.transparent,
                            indicatorColor: Colors.transparent,
                            labelStyle: UtilsStyle().robotoStyle.copyWith(
                                  fontSize: 12,
                                ),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(text: 'Mobile Apps V1'),
                              Tab(
                                text: 'Mobile Apps V2',
                              ),
                              Tab(
                                text: 'Mobile Apps V3',
                              ),
                            ]),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        PortfolioDesktopWidgetVolume1(),
                        PortfolioDesktopWidgetVolume2(),
                        PortfolioDesktopWidgetVolume3(),
                      ]),
                    ),
                  ],
                ),
              ),

              //view tabbar
              const SizedBox(
                height: 15.0,
              ),
              const Spacer(),

              // footer
              const FooterWidget(),
            ],
          )),
    );
  }
}
