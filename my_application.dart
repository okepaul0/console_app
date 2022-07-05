import 'dart:io';

import 'create_application.dart';
import 'list.dart';

MyApplication(String id) {
  print('***MY Applications***');
  print('Enter 1 to Add Application');
  print('Enter 2 to View Applications');
  print('Enter 3 to return to User page');
  String k = stdin.readLineSync()!;
  switch (int.parse(k)) {
    case 1:
      CreateApplication(id);
      break;
    case 2:
      view_application(id);
      break;
    case 3:
      break;
  }
}

view_application(String id) {
  int i = int.parse(id.substring(1));
  if (employees[i].my_applications.isEmpty) {
    print(employees[i].my_applications);
    print('You Have No Application Created');
  } else {
    for (int j = 0; j < employees[i].my_applications.length;) {
      print(employees[i].my_applications[j]);
      print('Delete Application [D]');
      print('Back [B]');
      j + 1 == employees[i].my_applications.length ? '' : print('Next [N]');
      String c = stdin.readLineSync()!;
      if (c.toUpperCase() == 'D') {
        employees[i].my_applications.remove(employees[i].my_applications[j]);
        print('Application Successfully Deleted');
        if (employees[i].my_applications.isEmpty) {
          print('You Have No Application Left');
        }
      } else if (c.toUpperCase() == 'N') {
        j++;
      } else if (c.toUpperCase() == 'B') {
        break;
      }
    }
  }
}
