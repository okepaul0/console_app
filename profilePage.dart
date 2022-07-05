import 'dart:io';

import 'employee_accoubt.dart';
import 'employer_account.dart';
import 'list.dart';
import 'model.dart';


  profile_page(String id) {
    if (id.startsWith('e')) {
      Employee current = employees[int.parse(id.substring(1))];
      print(current);
    } else {
      Employer current = employers[int.parse(id.substring(1))];
      print(current);
    }
    print('***Update Profile***');
    print('Enter 1 to update profile');
    print('Enter 2 to return to User page');
    String i = stdin.readLineSync()!;
    switch (int.parse(i)) {
      case 1:
        {
          if (id.startsWith('e')) {
            Employee_account(id);
          } else {
            Employer_account(id);
          }
        }
        break;
      case 2:
        break;
    }
  }

