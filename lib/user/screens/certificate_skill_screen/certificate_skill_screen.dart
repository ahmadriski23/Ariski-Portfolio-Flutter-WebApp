import 'package:animate_do/animate_do.dart';
import 'package:ariski_portfolio/data/list/certificate/list_certificate.dart';
import 'package:ariski_portfolio/utils/color.dart';
import 'package:ariski_portfolio/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificateSkillScreen extends StatefulWidget {
  const CertificateSkillScreen({super.key});

  @override
  State<CertificateSkillScreen> createState() => _CertificateSkillScreenState();
}

class _CertificateSkillScreenState extends State<CertificateSkillScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 2500),
              child: Text("Certifications & Skills",
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
                Text(
                  'Certifications:',
                  style: UtilsStyle().poppinsStyle.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 19 / 2,
                          crossAxisSpacing: 150),
                      itemCount: listCertificate().length,
                      itemBuilder: (context, index) {
                        var title = listCertificate()[index].title;
                        var company = listCertificate()[index].company;
                        var linkCertificate = listCertificate()[index].company;
                        return Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '•  ',
                                style: UtilsStyle().poppinsStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                title!,
                                style: UtilsStyle().poppinsStyle.copyWith(
                                    fontSize: 16,
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                company!,
                                style: UtilsStyle().poppinsStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  '[certificate]',
                                  style: UtilsStyle().poppinsStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              )
                            ],
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Skills:',
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
