import '../utils/Validator.dart';
import 'Person.dart';
class Student extends Person{
  String _batch='';
  double _mark1 = 0;
  double _mark2=0;

  Student() : super();


  Student.name1(int id, String name, String phoneNumber,String address,this._batch, this._mark1, this._mark2);


  @override
  inputPerson(List<Person> listPerson) {
    super.inputPerson(listPerson);
    _batch = Validator.getString("Input batch: ");
    _mark1 = Validator.getDouble("Input mark1: ");
    _mark2 = Validator.getDouble("Input mark2: ");
  }


  double get mark2 => _mark2;

  set mark2(double value) {
    _mark2 = value;
  }

  double get mark1 => _mark1;

  set mark1(double value) {
    _mark1 = value;
  }

  String get batch => _batch;

  set batch(String value) {
    _batch = value;
  }

  @override
  String toString() {
    return '${super.toString()},_batch: $_batch, _mark1: $_mark1, _mark2: $_mark2, AvgMark: $AvgMark}';
  }
  double get AvgMark => (this.mark1+this.mark2)/2;
}