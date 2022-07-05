import 'dart:io';

import 'create_cv.dart';
import 'list.dart';

cv(String id) {
  int i = int.parse(id.substring(1));
  if (employees[i].CV == '') {
    print('[1] Create CV');
    print('[2] Back To User Page');
    String j = stdin.readLineSync()!;
    switch (int.parse(j)) {
      case 1:
        create_cv(id);
        break;
      case 2:
        break;
    }
  } else {
    print('My CV');
    print(employees[i].CV);
    print('[1] Update CV');
    print('[2] Back To User Page');
    String j = stdin.readLineSync()!;
    switch (int.parse(j)) {
      case 1:
        create_cv(id);
        break;
      case 2:
        break;
    }
  }
}
