import '../../model/portfolio.dart';

List<Portfolio> listPortfolioV1() {
  Portfolio kamiSaiyoApp = Portfolio();
  kamiSaiyoApp.image = 'assets/images/kami-saiyo.png';
  kamiSaiyoApp.appName = 'Kami Saiyo App';
  kamiSaiyoApp.description =
      'Kami Saiyo is an online food selling application specifically for Nasi Padang stalls which is a typical food of West Sumatra and very easy to understand interface.';
  kamiSaiyoApp.technologie1 = 'Flutter';
  kamiSaiyoApp.technologie2 = 'Firebase';
  kamiSaiyoApp.technologie3 = 'Dart';
  kamiSaiyoApp.technologie4 = 'Provider (State Management)';

  Portfolio askApp = Portfolio();
  askApp.image = 'assets/images/ask.png';
  askApp.appName = 'Aplikasi Suara Konsumen App';
  askApp.description =
      'ASK App is a social media application that is used by users to complain about their complaints on social media. With a user interface that is very easy to understand.';
  askApp.technologie1 = 'Flutter';
  askApp.technologie2 = 'Firebase';
  askApp.technologie3 = 'Dart';
  askApp.technologie4 = 'Provider (State Management)';

  Portfolio scrollApp = Portfolio();
  scrollApp.image = 'assets/images/scroll.png';
  scrollApp.appName = 'Scroll App';
  scrollApp.description =
      'Scroll App is a clone application from TikTok whose UI is as similar as possible. has login features, adding videos, commenting on videos, searching for users, following users and viewing user profiles. with a UI that is very easy to see and has a UX that is very comfortable to use.';
  scrollApp.technologie1 = 'Flutter';
  scrollApp.technologie2 = 'Firebase';
  scrollApp.technologie3 = 'Dart';
  scrollApp.technologie4 = 'GetX (State Management)';

  Portfolio dismeeApp = Portfolio();
  dismeeApp.image = 'assets/images/dismee.png';
  dismeeApp.appName = 'Dismee App';
  dismeeApp.description =
      'Dismee App is a clone application from Zoom with a UI that looks as similar as possible. has login features, makes meet, join meet, and view meet history and of course has animations that make users very comfortable in using this application.';
  dismeeApp.technologie1 = 'Flutter';
  dismeeApp.technologie2 = 'Firebase';
  dismeeApp.technologie3 = 'Dart';
  dismeeApp.technologie4 = 'Omni Jitsi Meet (API)';

  return [
    kamiSaiyoApp,
    askApp,
    scrollApp,
    dismeeApp,
  ];
}
