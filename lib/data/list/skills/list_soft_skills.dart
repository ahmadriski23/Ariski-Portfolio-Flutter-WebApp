import 'package:ariski_portfolio/data/model/skill.dart';

List<Skill> listSoftSkill() {
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

  return [
    // * Soft Skill
    creative, problemSolving, communications, teamWork, analyzing,
  ];
}
