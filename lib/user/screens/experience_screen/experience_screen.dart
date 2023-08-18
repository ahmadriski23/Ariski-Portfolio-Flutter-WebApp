import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/desktop_experience_screen.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/large_experience_screen.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/mobile_experience_screen.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/tablet_experience_screen.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileExperienceScreen(),
      tablet: TabletExperienceScreen(),
      desktop: DesktopExperienceScreen(),
      large: LargeExperienceScreen(),
    );
  }
}
