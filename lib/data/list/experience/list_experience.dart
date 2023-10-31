import '../../model/experience.dart';

List<Experience> listExperience() {
  Experience experience1 = Experience();
  //experience 1
  experience1.date = 'January 2023 - June 2023';
  experience1.company = 'Saptaloka Digital';
  experience1.job = 'IT Staff';
  experience1.duration = '6 Month';
  experience1.location = 'Bandung';
  experience1.image = 'assets/images/experiences/saptaloka.png';

  Experience experience2 = Experience();
  experience2.date = 'July 2022 - December 2022';
  experience2.company = 'Saptaloka Digital';
  experience2.job = 'IT Staff, Internship';
  experience2.duration = '6 Month';
  experience2.location = 'Bandung';
  experience2.image = 'assets/images/experiences/saptaloka.png';

  return [experience1, experience2];
}
