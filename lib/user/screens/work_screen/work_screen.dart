import 'package:ariski_portfolio/user/screens/work_screen/desktop_work_screen.dart';
import 'package:ariski_portfolio/user/screens/work_screen/large_work_screen.dart';
import 'package:ariski_portfolio/user/screens/work_screen/tablet_work_screen.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import 'mobile_work_screen.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobileWorkScreen(),
      tablet: TabletWorkScreen(),
      desktop: DesktopWorkScreen(),
      large: LargeWorkScreen(),
    );
  }
}
