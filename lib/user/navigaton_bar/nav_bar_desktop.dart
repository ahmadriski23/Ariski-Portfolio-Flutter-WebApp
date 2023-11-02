// ignore_for_file: unused_field
import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/user/screens/certificate_screen.dart/certificate_screen.dart';
import 'package:ariski_portfolio/user/screens/experience_screen/experience_screen.dart';
import 'package:ariski_portfolio/user/screens/techstack_screen/techstack_screen.dart';
import 'package:ariski_portfolio/user/screens/work_screen/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';
import '../screens/home_screen/home_screen.dart';
import '../widgets/hover_text.dart';

// navigation bar untuk halaman desktop dan large

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  // method scroll
  void _scrollToSection(int index) {
    double sectionHeight;
    final screenSize = MediaQuery.of(context).size;

    // Tentukan sectionHeight berdasarkan ukuran perangkat
    if (screenSize.width < 720) {
      // Perangkat Mobile
      sectionHeight = 400.0;
    } else if (screenSize.width >= 720 == screenSize.width < 1000) {
      // Perangkat Tablet
      sectionHeight = 300.0;
    } else if (screenSize.width >= 1000 == screenSize.width < 1350) {
      // Perangkat Desktop
      sectionHeight = 460.0;
    } else {
      // Perangkat Besar
      sectionHeight = 525.0;
    }

    _scrollController.animateTo(index * sectionHeight,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }

  // list string untuk teks navbar ketika diklik
  final List<String> _textPages = [
    'Home',
    'Experience',
    'Techstack',
    'Certificate',
    'Work',
  ];

  //list widget halaman
  final List<Widget> _pages = [
    const HomeScreen(),
    const ExperienceScreen(),
    const TechstackScreen(),
    const CertificateScreen(),
    const WorkScreen(),
  ];

  //scroll controller
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool _isHovered = false;
  bool _isHoveredText = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Color(0xff050625),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            leadingWidth: 400,
            toolbarHeight: 100,
            floating: false,
            backgroundColor: Colors.black,

            // backgroundColor: Color(050625),

            // image logo and name web
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
              child: Row(
                children: [
                  // image logo
                  FadeIn(
                    duration: const Duration(milliseconds: 2500),
                    child: Container(
                      height: 45,
                      width: 45,
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
                        _scrollToSection(0);
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
                              fontSize: 27,
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
            // list menu navigation bar
            title: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: SizedBox(
                height: 24.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    // text navbar
                    return FadeIn(
                      duration: const Duration(milliseconds: 2500),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _scrollToSection(index);
                            _currentIndex = index;
                          });
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors
                              .grabbing, // Set the cursor shape
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
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 27.0),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                decoration: BoxDecoration(
                                  border: _currentIndex == index
                                      ? const Border(
                                          bottom: BorderSide(
                                              width: 1.0, color: Colors.grey))
                                      : null,
                                ),
                                child: Text(
                                  _textPages[index],
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
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
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            pinned: true,
          ),
          // body halaman
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _pages[index];
              },
              childCount: _pages.length,
            ),
          ),
        ],
      ),
    );
  }
}
