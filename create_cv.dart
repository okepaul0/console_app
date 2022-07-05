import 'dart:io';

import 'list.dart';
import 'my_cv.dart';

create_cv(String a) {
  int i = int.parse(a.substring(1));
  print('Type in CV here >');
  String cv = stdin.readLineSync()!;
  print('Are you sure you want to create CV [Y/N]');
  String j = stdin.readLineSync()!;
  if (j.toUpperCase() == 'Y') {
    employees[i].CV = cv;
    print('CV Succesfully Created');
  }
}
