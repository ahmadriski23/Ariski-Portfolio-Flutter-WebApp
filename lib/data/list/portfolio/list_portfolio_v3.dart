import '../../model/portfolio.dart';

List<Portfolio> listPortfolioV3() {
  Portfolio todoApp = Portfolio();
  todoApp.image = 'assets/images/to-do.png';
  todoApp.appName = 'To Do App';
  todoApp.description =
      'Todo App is a daily checklist App. This one to do list App is easy to use with a very easy to understand user interface. User can Add to do, Delete to do and Complete to do.';
  todoApp.technologie1 = 'Flutter';
  todoApp.technologie2 = 'Hive (Local Storage)';
  todoApp.technologie3 = 'Dart';
  todoApp.technologie4 = '';

  return [todoApp];
}
