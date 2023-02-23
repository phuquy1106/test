import '../model/Person.dart';
import '../utils/Validator.dart';
import '../model/Student.dart';
import '../model/Teacher.dart';

class PersonManager {
  List<Person> _listPerson = [];

  PersonManager(this._listPerson);

  addPerson() {
    int i = 0;
    do {
      print("1 nhập student");
      print("2 nhập teacher");
      i = Validator.getInt("Input choice: ");
      if (i < 1 || i > 2) {
        print("choose 1 or 2");
      }
    } while (i < 1 || i > 2);
    switch (i) {
      case 1:
        {
          Student st = Student();
          st.inputPerson(_listPerson);
          _listPerson.add(st);
          break;
        }
      case 2:
        {
          Teacher ta = Teacher();
          ta.inputPerson(_listPerson);
          _listPerson.add(ta);
        }
    }
  }
  showStudent(){
    _listPerson.forEach((pr) {
      if(pr is Student){
        print(pr);
      }
    });
  }
  showTeacher(){
    _listPerson.forEach((pr) {
      if(pr is Teacher){
        print(pr);
      }
    });
  }
  searchIdOrName(){
    int i=0;
    do {
      print("search id");
      print("search name");
      i = Validator.getInt("input choice: ");
      if(i<1||i>2){
        print("choose 1 or 2");
      }
    }while(i<1||i>2);
    switch(i){
      case 1:{
        int x = Validator.getInt("Input id search");
        var list1 = _listPerson.where((st) => (st.id==x));
        list1.forEach((element) {print(element);});
        if(list1.isEmpty){
          print("No data to search");
        }
        break;
      }
      case 2:{
        String x = Validator.getString("Input name search");
        x = x.toLowerCase();
        var list1 = _listPerson.where((st) => (st.name.toLowerCase()==x));
        list1.forEach((element) {print(element);});
        if(list1.isEmpty){
          print("No data to search");
        }
        break;
      }
    }

  }
  sortNameStudent(){
    List<Student> lis1 = [];
    _listPerson.forEach((pr) {
      if(pr is Student){
        lis1.add(pr);
      }
    });
    lis1.sort((a,b){
     if(a.name.compareTo(b.name)<0){
       return -1;
     }
     else if(a.name.compareTo(b.name)>0){
       return 1;
     }
     else return 0;
    });
    lis1.forEach((pr) { print(pr);});
    lis1.clear();
  }
  sortNameTeacher(){
    List<Teacher> lis1 = [];
    _listPerson.forEach((pr) {
      if(pr is Teacher){
        lis1.add(pr);
      }
    });
    lis1.sort((a,b){
      if(a.name.compareTo(b.name)<0) return -1;
      else if(a.name.compareTo(b.name)>0) return 1;
      else return 0;
    });
    lis1.forEach((pr) { print(pr);});
    lis1.clear();
  }
 
}
