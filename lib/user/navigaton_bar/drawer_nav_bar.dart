import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/user/screens/certificate_screen.dart/certificate_screen.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/experience_screen.dart';
import 'package:ariski_portfolio/user/screens/home_screen/home_screen.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/techstack_screen.dart';
import 'package:ariski_portfolio/user/screens/work_screen/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../utils/color.dart';
import '../../utils/text_style.dart';
import '../widgets/hover_text.dart';

// navigation bar untuk halaman mobile dan tablet
class DrawerNavbarMobileTablet extends StatefulWidget {
  const DrawerNavbarMobileTablet({super.key});

  @override
  State<DrawerNavbarMobileTablet> createState() =>
      _DrawerNavbarMobileTabletState();
}

class _DrawerNavbarMobileTabletState extends State<DrawerNavbarMobileTablet> {
  // ignore: unused_field
  bool _isHovered = false;
  bool _isHoveredText = false;
  int _currentIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  // scroll untuk drawer
  void _scrollToSection(int index) {
    double sectionHeight;
    final screenSize = MediaQuery.of(context).size;

    // Tentukan sectionHeight berdasarkan ukuran perangkat
    if (screenSize.width < 720) {
      // Perangkat Mobile
      sectionHeight = 595.0;
    } else if (screenSize.width >= 720 == screenSize.width < 1000) {
      // Perangkat Tablet
      sectionHeight = 475.0;
    } else if (screenSize.width >= 1000 == screenSize.width < 1350) {
      // Perangkat Desktop
      sectionHeight = 515.0;
    } else {
      // Perangkat Besar
      sectionHeight = 800.0;
    }

    _scrollController.animateTo(index * sectionHeight,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
    Navigator.pop(context); // Close the drawer after selecting a section
  }

  //scroll untuk text di appBar
  void _scrollToSectionText(int sectionIndex) {
    double sectionPosition =
        sectionIndex * 400.0; // Adjust this value based on your layout
    _scrollController.animateTo(
      sectionPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  // list widget halaman
  final List<Widget> _pages = [
    const HomeScreen(),
    const ExperienceScreen(),
    const TechstackScreen(),
    const CertificateScreen(),
    const WorkScreen(),
  ];

  //list widget String text pada drawer
  final List<String> _textPages = [
    'Home',
    'Experience',
    'Techstack',
    'Certificate',
    'Work',
  ];

  // controller
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        // appBar
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          // icons menu

          // nama web dan logo
          title: Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image logo
                  FadeIn(
                    duration: const Duration(milliseconds: 2500),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/logo.png')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  // name website
                  FadeIn(
                    duration: const Duration(milliseconds: 2500),
                    child: GestureDetector(
                      onTap: () {
                        _scrollToSectionText(0);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) {
                          setState(() {
                            _isHoveredText = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _isHoveredText = false;
                          });
                        },
                        child: HoverWidget(
                          onHover: (isHovered) {},
                          child: Text(
                            'ahmadriski.',
                            style: GoogleFonts.eduSaBeginner(
                                textStyle: TextStyle(
                              color: _isHoveredText
                                  ? UtilsColor.kPrimaryColor
                                  : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(
                  MdiIcons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        // drawer navigation
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(children: [
              // tombol exit
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: FadeIn(
                      duration: const Duration(milliseconds: 2500),
                      child: Icon(
                        MdiIcons.exitToApp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              // image logo dan nama web
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // image logo
                  FadeIn(
                    duration: const Duration(milliseconds: 2500),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/logo.png')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  // name website
                  FadeIn(
                    duration: const Duration(milliseconds: 2500),
                    child: Text(
                      'ahmadriski.',
                      style: GoogleFonts.eduSaBeginner(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              // list nama drawer
              Container(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _scrollToSection(index);
                        _currentIndex = index;
                      },
                      child: MouseRegion(
                        cursor:
                            SystemMouseCursors.grabbing, // Set the cursor shape
                        onEnter: (_) {
                          setState(() {
                            _isHovered = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _isHovered = false;
                          });
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: FadeInLeft(
                              duration: const Duration(milliseconds: 2500),
                              child: Text(
                                _textPages[index],
                                style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize:
                                          _currentIndex == index ? 14.0 : 14.0,
                                      fontWeight: _currentIndex == index
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: _currentIndex == index
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
        // body halaman
        body: ListView.builder(
            controller: _scrollController,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index];
            }));
  }
}
