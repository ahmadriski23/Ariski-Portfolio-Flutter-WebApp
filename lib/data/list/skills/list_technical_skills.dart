import 'package:ariski_portfolio/data/model/skill.dart';

List<Skill> listTechnicalSkills() {
  Skill dart = Skill();
  dart.technicalSkills = 'Dart';

  Skill flutter = Skill();
  flutter.technicalSkills = 'Flutter';

  Skill firebase = Skill();
  firebase.technicalSkills = 'Firebase';

  Skill nodeJS = Skill();
  nodeJS.technicalSkills = 'Node JS';

  Skill mongoDB = Skill();
  mongoDB.technicalSkills = 'Mongo DB';

  Skill git = Skill();
  git.technicalSkills = 'Git';

  Skill getX = Skill();
  getX.technicalSkills = 'GetX';

  return [dart, flutter, firebase, nodeJS, mongoDB, git, getX];
}
