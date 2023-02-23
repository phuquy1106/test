import 'dart:io';

class Validator{

  static String getString(String prompt){
    String st = "";
    bool isValid = false;
    do{
      try{
        print(prompt);
        st = stdin.readLineSync().toString().trim();
        isValid = true;
      }on IOException{
        print("IOException. Try again.");
      }
    }while(!isValid);
    return st;
  }
  static int getInt(String prompt){
    int value = 0 ;
    bool isValid = false;
    do{
      try{
        print(prompt);
        value = int.parse(stdin.readLineSync().toString().trim());
        isValid = true;
      }on FormatException{
        print("Error! Invalid number. Try again");
      }on IOException{
        print("IOException. Try again.");
      }
    }while(!isValid);
    return value;
  }
  static double getDouble(String prompt){
    double value = 0 ;
    bool isValid = false;
    do{
      try{
        print(prompt);
        value = double.parse(stdin.readLineSync().toString().trim());
        isValid = true;
      }on FormatException{
        print("Error! Invalid number. Try again");
      }on IOException{
        print("IOException. Try again.");
      }
    }while(!isValid);
    return value;
  }

}