import 'dart:io';

import './list.dart';
import './create_account.dart';
import 'login_account.dart';
import 'updator.dart';

home() {
  int val;
  print('*** Welcome To Business Management System***');
  print('[1]  Create Account');
  print('[2]  Login Account');
  val = int.parse(stdin.readLineSync()!);
  while (val != 99) {
    switch (val) {
      case 1:
        CreateAccount();
        break;
      case 2:
        LoginAccount();
        break;
      case 3:
        {
          print(employees);
          print(employers);
          break;
        }
      case 4:
        updator();
        break;
    }
    val = int.parse(stdin.readLineSync()!);
  }
}

Printer() {
  for (int i = 0; i < employees.length; i++) {
    print(employees[i]);
  }
}
