// ignore_for_file: deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/certificate/list_certificate.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeCertificateScreen extends StatefulWidget {
  const LargeCertificateScreen({super.key});

  @override
  State<LargeCertificateScreen> createState() => _LargeCertificateScreenState();
}

class _LargeCertificateScreenState extends State<LargeCertificateScreen> {
  // * METHOD FOR TO LINK CERTIFICATE
  Future<void> linkCertificateUrl(String url) async {
    url = url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // * METHOD AGAR HOVER BUTTON LINK SATU PER SATU
  List<bool> isHoveredList =
      List.generate(listCertificate().length, (index) => false);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 575,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 2500),
              child: Text("Certifications",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 35.0,
            ),
            // * Certifications List
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 2500),
                  child: Text(
                    'Certifications:',
                    style: UtilsStyle().poppinsStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 18 / 2,
                              crossAxisSpacing: 17),
                      itemCount: listCertificate().length,
                      itemBuilder: (context, index) {
                        var title = listCertificate()[index].title;
                        var company = listCertificate()[index].company;
                        var certificate =
                            listCertificate()[index].linkCertificate;
                        return FadeInDown(
                          duration: const Duration(milliseconds: 2500),
                          child: Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '•  ',
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  title!,
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                      color: UtilsColor.kPrimaryColor),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'by',
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  company!,
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(
                                      () {
                                        isHoveredList[index] = true;
                                      },
                                    );
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHoveredList[index] = false;
                                    });
                                  },
                                  child: InkWell(
                                    onTap: () {
                                      linkCertificateUrl(certificate!);
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        boxShadow: [
                                          isHoveredList[index]
                                              ? const BoxShadow(
                                                  offset: Offset(1, 1.75),
                                                  blurRadius: 1,
                                                  color: Colors.white,
                                                )
                                              : const BoxShadow(
                                                  offset: Offset(1, 1.75),
                                                  blurRadius: 1,
                                                  color:
                                                      UtilsColor.kPrimaryColor,
                                                )
                                        ],
                                        color: isHoveredList[index]
                                            ? UtilsColor.kPrimaryColor
                                            : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Certificate',
                                          style: UtilsStyle()
                                              .robotoStyle
                                              .copyWith(
                                                  fontSize: 12,
                                                  color: Colors.grey[800],
                                                  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            // * Skill List
          ],
        ),
      ),
    );
  }
}
