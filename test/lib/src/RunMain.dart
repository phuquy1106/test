import 'main/PersonManager.dart';
import 'model/Person.dart';
import 'utils/Validator.dart';
import 'utils/MenuUtils.dart';
main(){
  List<Person> _listPerson = [];
  PersonManager  pr = PersonManager(_listPerson);

  int i = 0;
  do {
    MenuUtils.printMenu();
    do {
      i = Validator.getInt("Input choice: ");
      if (i < 1 || i > 8) {
        print("choose from 1 to 7 ");
      }
    } while (i < i || i > 8);
    switch (i) {
      case 1:
        pr.addPerson();
        break;
      case 2:
        pr.showStudent();
        break;
      case 3:
        pr.showTeacher();
        break;
      case 4:
        pr.searchIdOrName();
        break;
      case 5:
        pr.showStudent();
        break;
      case 6:
        pr.showTeacher();
        break;
      case 7:
        break;
      default:
        print("exit the program");
    }
  }while(i!=8);
}