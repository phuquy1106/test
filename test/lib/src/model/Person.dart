import '../utils/Validator.dart';
class Person{
  int _id = 0;
  String _name ='';
  String _numberPhone = '';
  String _address='';

  Person();

  Person.name1(this._id, this._name, this._numberPhone, this._address);


  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get numberPhone => _numberPhone;

  set numberPhone(String value) {
    _numberPhone = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  bool _checkPhone2(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      print("Phone number can not be empty");
      return false;
    }
    for (var i = 0; i < phoneNumber.length; i++) {
      try {
        int.parse(phoneNumber.substring(i, i + 1));
      } on FormatException {
        print("Phone number must contain numeric characters");
        return false;
      }
    }
    return true;
  }
  inputPerson(List<Person> listPerson){
    bool check;
    do{
      check = true;
      _id = Validator.getInt("Input id: ");
      for(Person pr in listPerson){
        if(pr.id == _id){
          print("id already exists please enter another id");
          check = false;
        }
      }
    }while(!check);
    _name = Validator.getString("Input name: ");
    bool checkPhone;
    do {
      checkPhone = true;
      _numberPhone = Validator.getString("Input phone: ");
      if (!_checkPhone2(_numberPhone)){
        checkPhone = false;
      }
    }while(!checkPhone);
    _address = Validator.getString("Input address: ");
  }

  @override
  String toString() {
    return 'Person{_id: $_id, _name: $_name, _numberPhone: $_numberPhone, _address: $_address}';
  }
}

