// ignore_for_file: unused_field
import 'package:ariski_portfolio/service/color.dart';
import 'package:ariski_portfolio/user/screens/service_screen.dart';
import 'package:ariski_portfolio/user/screens/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/hover_text.dart';
import 'home_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  // method scroll
  void _scrollToSection(int index) {
    // ignore: prefer_const_declarations
    final double sectionHeight = 800.0;
    _scrollController.animateTo(index * sectionHeight,
        duration: const Duration(milliseconds: 1500), curve: Curves.easeInOut);
  }

  // list string untuk teks navbar ketika diklik
  final List<String> _textPages = [
    'Home',
    'Experience',
    'Work',
  ];

  //list widget halaman
  final List<Widget> _pages = [
    const HomeScreen(),
    const WorkScreen(),
    const ServiceScreen(),
  ];

  //list int nyoba nyoba aja
  final List<int> _intPages = [1, 2, 3];

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
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            leadingWidth: 400,
            toolbarHeight: 100,
            floating: false,
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/logo.png')),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  GestureDetector(
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
                                ? ServiceColor.kPrimaryColor
                                : Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
              child: SizedBox(
                height: 24.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _scrollToSection(index);
                          _currentIndex = index;
                        });
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27.0),
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
                    );
                  },
                ),
              ),
            ),
            pinned: true,
          ),
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
