import 'dart:io';

import './list.dart';
import 'home.dart';
import 'model.dart';
import 'user_page.dart';

LoginAccount() {
  bool authenticator;
  print('***Login Account***');
  print('***Account type***');
  print(users);
  Auth newAuth = Auth('', '');
  int i = 3;
  while (i > 0) {
    print('Username: ');
    newAuth.Username = stdin.readLineSync()!;
    print('Password: ');
    newAuth.Password = stdin.readLineSync()!;
    authenticator = Authenticator(newAuth);
    if (authenticator == true) {
      print('Login Successfull');
      User_Page(newAuth);
    } else {
      print('Login failed');
      i--;
      if (i != 0) {
        print('You have ${i} trial left');
      } else {
        home();
      }
    }
  }
}

bool Authenticator(Auth b) {
  bool a = false;
  for (int i = 0; i < users.length; i++) {
    if (b.Password == users[i].Password && b.Username == users[i].Username) {
      a = !a;
      break;
    } else {
      a;
    }
  }
  return a;
}
