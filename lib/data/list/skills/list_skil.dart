import 'package:ariski_portfolio/data/model/skill.dart';

List<Skill> listSkill() {
  // * Soft Skill
  Skill creative = Skill();
  creative.softSkills = 'Creative';

  Skill problemSolving = Skill();
  problemSolving.softSkills = 'Problem Solving';

  Skill communications = Skill();
  communications.softSkills = 'Communication';

  Skill teamWork = Skill();
  teamWork.softSkills = 'Team Work';

  Skill analyzing = Skill();
  analyzing.softSkills = 'Analyzing';

  // * Technical Skills

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

  return [
    // * Soft Skill
    creative, problemSolving, communications, teamWork, analyzing,
    // * Technical Skill
    dart, flutter, firebase, nodeJS, mongoDB, git, getX
  ];
}
