import 'Person.dart';
import '../utils/Validator.dart';
class Teacher extends Person {
    double _salary = 0;
    int _numberWorkDay = 0;


    Teacher();

    Teacher.name1(int id, String name, String phoneNumber,String address,this._salary, this._numberWorkDay);


    @override
  String toString() {
    return '${super.toString()}, _salary: $salary, _numberWorkDay: $_numberWorkDay}';
  }

  @override
  inputPerson(List<Person> listPerson) {
      super.inputPerson(listPerson);
      _numberWorkDay = Validator.getInt("Input numberWorkDay: ");
  }
    int get numberWorkDay => _numberWorkDay;

  set numberWorkDay(int value) {
    _numberWorkDay = value;
  }

  double get salary => this.numberWorkDay*800000;


}