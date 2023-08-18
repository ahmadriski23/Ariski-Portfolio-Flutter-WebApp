// ignore_for_file: deprecated_member_use
import 'package:ariski_portfolio/responsive.dart';
import 'package:ariski_portfolio/user/screens/certificate_screen.dart/desktop_certificate_screen.dart';
import 'package:ariski_portfolio/user/screens/certificate_screen.dart/large_certificate_screen.dart';
import 'package:ariski_portfolio/user/screens/certificate_screen.dart/tablet_certificate_screen.dart';
import 'package:flutter/material.dart';

import 'mobile_certificate_screen.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: MobileCertificateScreen(),
        tablet: TabletCertificateScreen(),
        desktop: DesktopCertificateScreen(),
        large: LargeCertificateScreen());
  }
}
