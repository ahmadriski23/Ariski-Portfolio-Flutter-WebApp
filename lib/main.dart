import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/navigaton_bar/drawer_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'user/navigaton_bar/nav_bar_desktop.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAkBMksYeVSeb8o7uXhClFN5AGpbmag9u4",
          authDomain: "stariski-a1c6a.firebaseapp.com",
          projectId: "stariski-a1c6a",
          storageBucket: "stariski-a1c6a.appspot.com",
          messagingSenderId: "611829206220",
          appId: "1:611829206220:web:fe83097a80993c71560669"));
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stariski',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:
          // navigation bar in all responsive
          // go to file navigation_bar to check all screen
          AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splashIconSize: 100,
        splash: 'assets/images/logo-splash.png',
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: const Responsive(
          large: NavigationBarScreen(),
          desktop: NavigationBarScreen(),
          tablet: DrawerNavbarMobileTablet(),
          mobile: DrawerNavbarMobileTablet(),
        ),
      ),
    );
  }
}
