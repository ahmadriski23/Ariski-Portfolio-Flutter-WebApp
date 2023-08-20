import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/navigaton_bar/drawer_nav_bar.dart';
import 'package:ariski_portfolio/utils/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'user/navigaton_bar/nav_bar_desktop.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // * OPTIONS FIREBASE FOR WEB AND APPS
  if (kIsWeb) {
    await Firebase.initializeApp(options: firebaseConfig);
  } else {
    Firebase.initializeApp();
  }
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stariski',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:
          // * navigation bar in all responsive
          // * go to file navigation_bar to check all screen
          AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splashIconSize: 100,
        splash: 'assets/images/logo-splash.png',
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
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
