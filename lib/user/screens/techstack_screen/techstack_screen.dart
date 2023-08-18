import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/desktop_techstack_screen.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/large_techstack_screen.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/mobile_techstack_screen.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/tablet_techstack_screen.dart';
import 'package:flutter/material.dart';

class TechstackScreen extends StatelessWidget {
  const TechstackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileTechstackScreen(),
        tablet: TabletTechstackScreen(),
        desktop: DesktopTechstackScreen(),
        large: LargeTechstackScreen());
  }
}
