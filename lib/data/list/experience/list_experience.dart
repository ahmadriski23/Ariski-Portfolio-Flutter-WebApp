import '../../model/experience.dart';

List<Experience> listExperience() {
  Experience experience1and2 = Experience();
  //experience 1
  experience1and2.dateExp1 = 'January 2023 - June 2023';
  experience1and2.companyExp1 = 'PT. Saptaloka Digital, Bandung';
  experience1and2.jobExp1 = 'IT Staff';
  experience1and2.workOneExp1 =
      '• Developing a Website about buying and selling cabling using the Flutter Framework, MongoDB Backend, NodeJS Rest API and GetX State Management';
  experience1and2.workTwoExp1 =
      '• Developing a Company Profile Website using the Flutter Framework and GetX State"';
  experience1and2.workThreeExp1 =
      '• Developing a Website Landing Page about Mobile Sales using the Flutter Framework';

  //experience 2
  experience1and2.dateExp2 = 'July 2022 - December 2022';
  experience1and2.companyExp2 = 'PT. Saptaloka Digital, Bandung';
  experience1and2.jobExp2 = 'IT Staff, Internship';
  experience1and2.workOneExp2 =
      '• Developing Applications such as Social Media regarding online consumer complaints using the Flutter Framework, Firebase Backend and Provider State Management';
  experience1and2.workTwoExp2 =
      '• Create a Sign Language Recognition Application using Machine Learning and Tech stack Python';
  experience1and2.workThreeExp2 =
      '• Use Figma to create UI/UX for Website Company Profile';

  return [experience1and2];
}
