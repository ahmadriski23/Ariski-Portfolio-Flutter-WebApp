import 'package:ariski_portfolio/data/model/techstack.dart';

List<Techstack> listTechstack() {
  Techstack dart = Techstack();
  dart.imageLogo = 'assets/images/Dart.png';
  dart.techStack = 'Dart';

  Techstack flutter = Techstack();
  flutter.imageLogo = 'assets/images/Flutter.png';
  flutter.techStack = 'Flutter';

  Techstack javascript = Techstack();
  javascript.imageLogo = 'assets/images/Javascript.png';
  javascript.techStack = 'Javascript';

  Techstack nodejs = Techstack();
  nodejs.imageLogo = 'assets/images/NodeJS.png';
  nodejs.techStack = 'Node JS';

  Techstack html = Techstack();
  html.imageLogo = 'assets/images/Html.png';
  html.techStack = 'HTML';

  Techstack css = Techstack();
  css.imageLogo = 'assets/images/Css.png';
  css.techStack = 'CSS';

  // Techstack firebase = Techstack();
  // firebase.imageLogo = '';
  // firebase.techStack = '';

  Techstack mongodb = Techstack();
  mongodb.imageLogo = 'assets/images/MongoDB.png';
  mongodb.techStack = 'Mongo DB';

  return [
    dart,
    flutter,
    mongodb,
    html,
    css,
    nodejs,
    javascript,
  ];
}
