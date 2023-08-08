import '../../model/portfolio.dart';

List<Portfolio> listPortfolioV2() {
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
  kiStoreApp.id = 9;

  return [financeApp, weatherApp, signLanguageApp, kiStoreApp];
}
