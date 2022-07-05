import 'dart:io';

import 'auth_user.dart';
import 'home.dart';
import 'list.dart';
import 'model.dart';

CreatePassword(newEmployee, String id) {
  bool a = true;
  String password;
  String password2;
  while (a) {
    print('Create Password :');
    password = stdin.readLineSync()!;
    print('Confirm Password :');
    password2 = stdin.readLineSync()!;
    if (password == password2) {
      newEmployee.Password = password;
      print(' Password Successfully Created');

      if (newEmployee.Username.startsWith('e')) {
        employees.add(newEmployee);
        auth_list();
      } else {
        employers.add(newEmployee);
        auth_list();
      }
      home();
      break;
    } else {
      print(' Inputs cannot be different ');
    }
  }
}
