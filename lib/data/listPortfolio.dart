import 'classPortfolio.dart';

List<Portfolio> listPortfolio() {
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

  Portfolio todoApp = Portfolio();
  todoApp.image = 'assets/images/to-do.png';
  todoApp.appName = 'To Do App';
  todoApp.description =
      'Todo App is a daily checklist App. This one to do list App is easy to use with a very easy to understand user interface. User can Add to do, Delete to do and Complete to do.';
  todoApp.technologie1 = 'Flutter';
  todoApp.technologie2 = 'Hive (Local Storage)';
  todoApp.technologie3 = 'Dart';
  todoApp.technologie4 = '';

  Portfolio financeApp = Portfolio();
  financeApp.image = 'assets/images/finance-bomb.png';
  financeApp.appName = 'Finance Bomb App';
  financeApp.description =
      'Finance Bomb is an application where users can manage the finances they get or spend. With a user interface that is very easy to understand.';
  financeApp.technologie1 = 'Flutter';
  financeApp.technologie2 = 'Hive (Local Storage)';
  financeApp.technologie3 = 'Dart';
  financeApp.technologie4 = '';

  Portfolio weatherApp = Portfolio();
  weatherApp.image = 'assets/images/smiling-weather.png';
  weatherApp.appName = 'Smilling Weather App';
  weatherApp.description =
      'Smiling Weather is a weather detection app with an easy to understand user interface. User can see weather conditions now and a few hours later.';
  weatherApp.technologie1 = 'Flutter';
  weatherApp.technologie2 = 'Hive (Local Storage)';
  weatherApp.technologie3 = 'Dart';
  weatherApp.technologie4 = '';

  Portfolio signLanguageApp = Portfolio();
  signLanguageApp.image = 'assets/images/sign-language.png';
  signLanguageApp.appName = 'Sign Language Recognition App';
  signLanguageApp.description =
      'Sign language recognition Application with a User Interface that is very easy to understand and is specialized to self-identification and obtaining information. User can do hand interaction and the identified letters will appear.';
  signLanguageApp.technologie1 = 'Phyton';
  signLanguageApp.technologie2 = 'Machine Learning';
  signLanguageApp.technologie3 = 'OpenCV';
  signLanguageApp.technologie4 = 'TensorFlow Lite';

  Portfolio kiStoreApp = Portfolio();
  kiStoreApp.image = 'assets/images/ki-store.png';
  kiStoreApp.appName = 'KiStore App';
  kiStoreApp.description =
      'KiStore App is an Ecommerce application with various needs for goods including electronics. Users can use the cart and purchase features with an easy-to-understand user interface.';
  kiStoreApp.technologie1 = 'Flutter';
  kiStoreApp.technologie2 = 'Riverpod (State Management)';
  kiStoreApp.technologie3 = 'Dart';
  kiStoreApp.technologie4 = '';

  return [
    askApp,
    scrollApp,
    dismeeApp,
    todoApp,
    financeApp,
    weatherApp,
    signLanguageApp,
    kiStoreApp
  ];
}
