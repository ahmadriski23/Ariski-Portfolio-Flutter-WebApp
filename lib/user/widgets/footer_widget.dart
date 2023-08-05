import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/service/color.dart';
import 'package:ariski_portfolio/service/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: ServiceColor.kPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
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
                    height: 40,
                    width: 40,
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
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45.0,
            ),
            // icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: Icon(
                    MdiIcons.linkedin,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 75.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: Icon(
                    MdiIcons.github,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 75.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: Icon(
                    MdiIcons.instagram,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 75.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: Icon(
                    MdiIcons.whatsapp,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 75.0,
                ),
                BounceInUp(
                  duration: const Duration(seconds: 5),
                  child: Icon(
                    MdiIcons.twitter,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45.0,
            ),
            // let say hello and copyright
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInLeft(
                    duration: const Duration(seconds: 5),
                    child: Container(
                      height: 35,
                      width: 120,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                width: 1, color: Colors.black)),
                        onPressed: () {},
                        child: Text(
                          'Say Hello',
                          style: ServiceText()
                              .robotoStyle
                              .copyWith(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  FadeInRight(
                    duration: const Duration(seconds: 5),
                    child: Text(
                      '© 2023 Ahmad Riski. All rights reserved',
                      style: ServiceText().robotoStyle.copyWith(
                            color: Colors.black,
                            fontSize: 15,
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
