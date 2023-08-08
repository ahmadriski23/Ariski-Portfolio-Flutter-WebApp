import 'package:ariski_portfolio/user/screens/home_screen/desktop_home_screen.dart';
import 'package:ariski_portfolio/user/screens/home_screen/large_home_screen.dart';
import 'package:ariski_portfolio/user/screens/home_screen/mobile_home_screen.dart';
import 'package:ariski_portfolio/user/screens/home_screen/tablet_home_screen.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      large: LargeHomeScreen(),
      desktop: DesktopHomeScreen(),
      tablet: TabletHomeScreen(),
      mobile: MobileHomeScreen(),
    );
  }
}
