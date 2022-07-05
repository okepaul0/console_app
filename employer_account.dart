import 'dart:io';

import 'create_password.dart';
import 'list.dart';
import 'model.dart';
import 'profilePage.dart';

Employer_account(String id) {
  String name1;
  String name2;
  Employer newEmployer = Employer('', '', '', '', [], '', '', '', [], []);
  print('Surname :');
  name1 = stdin.readLineSync()!;
  print('First Name :');
  name2 = stdin.readLineSync()!;
  newEmployer.Name = name1 + ' ' + name2;
  print('Age e.g[18]:');
  newEmployer.Age = stdin.readLineSync()!;
  print('Business Name :');
  newEmployer.BusinessName = stdin.readLineSync()!;
  if (id == '') {
    newEmployer.Username = 'E' + employers.length.toString();
    print('Your Username is : ${newEmployer.Username}');
    CreatePassword(newEmployer, id);
  } else {
    newEmployer.Username = id;
    newEmployer.Password = employers[int.parse(id.substring(1))].Password;
    employers[int.parse(id.substring(1))] = newEmployer;
    print('Profile Updated Succesfully');
    profile_page(id);
  }
}
