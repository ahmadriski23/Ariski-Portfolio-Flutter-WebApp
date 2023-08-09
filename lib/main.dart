import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/navigaton_bar/drawer_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'user/navigaton_bar/nav_bar_desktop.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ARiski Portfolio',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:
          // navigation bar in all responsive
          // go to file navigation_bar to check all screen
          const Responsive(
        large: NavigationBarScreen(),
        desktop: NavigationBarScreen(),
        tablet: DrawerNavbarMobileTablet(),
        mobile: DrawerNavbarMobileTablet(),
      ),
    );
  }
}
