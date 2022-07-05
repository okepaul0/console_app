import 'dart:io';

import 'create_password.dart';
import 'list.dart';
import 'model.dart';
import 'profilePage.dart';

Employee_account(String id) {
  String name1;
  String name2;
  Employee newEmployee = Employee('', '', '', '', '', [], '', '', '', '', []);
  print('Surname :');
  name1 = stdin.readLineSync()!;
  print('First Name :');
  name2 = stdin.readLineSync()!;
  newEmployee.Name = name1 + ' ' + name2;
  print('Age e.g[18]:');
  newEmployee.Age = stdin.readLineSync()!;
  print('Field Of Study :');
  newEmployee.FOS = stdin.readLineSync()!;
  if (id == '') {
    newEmployee.Username = 'e' + employees.length.toString();
    print('Your Username is : ${newEmployee.Username}');
    CreatePassword(newEmployee, id);
  } else {
    newEmployee.Username = id;
    newEmployee.Password = employees[int.parse(id.substring(1))].Password;
    employees[int.parse(id.substring(1))] = newEmployee;
    print('Profile Updated Succesfully');
    profile_page(id);
  }
}
