// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class FooterMobileWidget extends StatefulWidget {
  const FooterMobileWidget({super.key});

  @override
  State<FooterMobileWidget> createState() => _FooterMobileWidgetState();
}

class _FooterMobileWidgetState extends State<FooterMobileWidget> {
  //method url to whatsapp
  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+6289659366024',
      text: "Hello riski",
    );
    await launchUrlString('$link');
  }

  //method url to email
  Future<void> launchEmailSubmission() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: 'ahmadriski.work@gmail.com',
        query: 'subject=&body=');

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      log('Could not launch $params');
    }
  }

  //method url to github
  final Uri _urlToGithub = Uri.parse('https://github.com/ahmadriski23');
  Future<void> _launchUrlToGithub() async {
    if (!await launchUrl(_urlToGithub)) {
      throw Exception('Could not launch $_urlToGithub');
    }
  }

  //method url to instagram
  final Uri _urlToInstagram = Uri.parse('https://instagram.com/amdrski');
  Future<void> _launchUrlToInstagram() async {
    if (!await launchUrl(_urlToInstagram)) {
      throw Exception('Could not launch $_urlToInstagram');
    }
  }

  // method url to linkedin
  final Uri _urlToLinkedin =
      Uri.parse('https://www.linkedin.com/in/ahmad-riski');
  Future<void> _launchUrlToLinkedin() async {
    if (!await launchUrl(_urlToLinkedin)) {
      throw Exception('Could not launch $_urlToLinkedin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: UtilsColor.kPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // logo dan nama web
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlipInX(
                  duration: const Duration(seconds: 5),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/logo-footer.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                FlipInY(
                  duration: const Duration(seconds: 5),
                  child: Text(
                    'ahmadriski.',
                    style: GoogleFonts.eduSaBeginner(
                        textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 17.0,
            ),
            // icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: InkWell(
                    onTap: () {
                      _launchUrlToLinkedin();
                    },
                    child: Icon(
                      MdiIcons.linkedin,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: InkWell(
                    onTap: () {
                      _launchUrlToGithub();
                    },
                    child: Icon(
                      MdiIcons.github,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: InkWell(
                    onTap: () {
                      _launchUrlToInstagram();
                    },
                    child: Icon(
                      MdiIcons.instagram,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: InkWell(
                    onTap: () {
                      launchWhatsApp();
                    },
                    child: Icon(
                      MdiIcons.whatsapp,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: InkWell(
                    onTap: () {
                      launchEmailSubmission();
                    },
                    child: Icon(
                      MdiIcons.gmail,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            // let say hello and copyright
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInLeft(
                      duration: const Duration(seconds: 5),
                      child: InkWell(
                        onTap: () {
                          launchEmailSubmission();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black),
                          height: 30,
                          width: 80,
                          child: Center(
                            child: Text(
                              'Say Hello',
                              style: UtilsStyle().poppinsStyle.copyWith(
                                  color: UtilsColor.kPrimaryColor, fontSize: 8),
                            ),
                          ),
                        ),
                      )),
                  const Spacer(),
                  FadeInRight(
                    duration: const Duration(seconds: 5),
                    child: Text(
                      '© 2023 Ahmad Riski All rights reserved',
                      style: UtilsStyle().robotoStyle.copyWith(
                            color: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
