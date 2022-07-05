import 'dart:io';
import 'dart:math';

import 'list.dart';
import 'model.dart';
import 'user_page.dart';

CreateApplication(String id) {
  Employee current = employees[int.parse(id.substring(1))];
  Application new_application = Application(
      Employee_Name: current.Name,
      Business_Name: current.BusinessName,
      Salary: '',
      CV: '',
      Empoyees_id: current.Username,
      Title: '');
  print('***Create Application***');
  print('Applicant Name : ${new_application.Employee_Name}');
  print('Employer Id : ${new_application.Empoyees_id}');
  print('Applicatin Title :');
  new_application.Title = stdin.readLineSync()!;
  print('Add CV : ');
  if (current.CV != '') {
    print('[1] Use existing CV');
    print('[2] Add CV');
    String k = stdin.readLineSync()!;
    switch (int.parse(k)) {
      case 1:
        new_application.CV = current.CV;
        break;
      case 2:
        {
          new_application.CV = stdin.readLineSync(
              encoding: systemEncoding, retainNewlines: true)!;
        }
        break;
    }
  } else {
    new_application.CV =
        stdin.readLineSync(encoding: systemEncoding, retainNewlines: true)!;
  }
  print('Application Title : ${new_application.Title}');
  print('Application CV : ${new_application.CV}');
  print('Input Salary Offer :');
  new_application.Salary = stdin.readLineSync()!;
  print('Do you want to create this Application [Y/N]: ');
  String val = stdin.readLineSync()!;
  if (val.toUpperCase() == 'Y') {
    employees[int.parse(id.substring(1))].my_applications.add(new_application);
    print('Application Successfully Created');
  } else {}
}
