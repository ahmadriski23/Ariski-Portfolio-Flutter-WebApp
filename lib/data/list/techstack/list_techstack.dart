import 'package:ariski_portfolio/data/model/techstack.dart';

List<Techstack> listTechstack() {
  Techstack dart = Techstack();
  dart.imageLogo = 'assets/images/techstacks/Dart.png';
  dart.techStack = 'Dart';

  Techstack flutter = Techstack();
  flutter.imageLogo = 'assets/images/techstacks/Flutter.png';
  flutter.techStack = 'Flutter';

  Techstack javascript = Techstack();
  javascript.imageLogo = 'assets/images/techstacks/Javascript.png';
  javascript.techStack = 'Javascript';

  Techstack html = Techstack();
  html.imageLogo = 'assets/images/techstacks/Html.png';
  html.techStack = 'HTML';

  Techstack css = Techstack();
  css.imageLogo = 'assets/images/techstacks/Css.png';
  css.techStack = 'CSS';

  Techstack github = Techstack();
  github.imageLogo = 'assets/images/techstacks/Github.png';
  github.techStack = 'Github';

  Techstack firebase = Techstack();
  firebase.imageLogo = 'assets/images/techstacks/Firebase.png';
  firebase.techStack = 'Firebase';

  Techstack nodeJS = Techstack();
  nodeJS.imageLogo = 'assets/images/techstacks/NodeJS.png';
  nodeJS.techStack = 'Node JS';

  Techstack expressJS = Techstack();
  expressJS.imageLogo = 'assets/images/techstacks/ExpressJS.png';
  expressJS.techStack = 'Express JS';

  Techstack mongodb = Techstack();
  mongodb.imageLogo = 'assets/images/techstacks/MongoDB.png';
  mongodb.techStack = 'Mongo DB';

  Techstack mySQL = Techstack();
  mySQL.imageLogo = 'assets/images/techstacks/MySQL.png';
  mySQL.techStack = 'My SQL';

  Techstack git = Techstack();
  git.imageLogo = 'assets/images/techstacks/Git.png';
  git.techStack = 'Git';

  return [
    dart,
    flutter,
    mongodb,
    html,
    css,
    github,
    firebase,
    expressJS,
    nodeJS,
    javascript,
    mySQL,
    git
  ];
}
