import 'dart:io';

import 'all_application.dart';
import 'all_offers.dart';
import 'home.dart';
import 'model.dart';
import 'my_application.dart';
import 'my_chat.dart';
import 'my_cv.dart';
import 'my_offer.dart';
import 'profilePage.dart';

User_Page(Auth user) {
  print('***Welcome to user Page***');
  if (user.Username.startsWith('e')) {
    e_User(user.Username);
  } else {
    E_User(user.Username);
  }
}

e_User(String a) {
  bool n = true;
  while (n) {
    print(
        '[1] Profile \n[2] My Application\n[3] My CV\n[4] Available Offer\n[5] All Applications\n[6] My Chat\n[7] Logout');
    String i = stdin.readLineSync()!;
    switch (int.parse(i)) {
      case 1:
        profile_page(a);
        break;
      case 2:
        MyApplication(a);
        break;
      case 3:
        cv(a);
        break;
      case 4:
        all_offers(a);
        break;
      case 5:
        all_applications(a);
        break;
      case 6:
        MyChat(a);
        break;
      case 7:
        {
          n = !n;
          home();
          break;
        }
    }
  }
}

E_User(String a) {
  bool n = true;
  while (n) {
    print(
        '[1] Profile \n[2] My Offer\n[3] Available Applicants\n[4] All Offers\n[5] My Chat\n[6] Logout');
    String i = stdin.readLineSync()!;
    switch (int.parse(i)) {
      case 1:
        profile_page(a);
        break;
      case 2:
        MyOffer(a);
        break;
      case 3:
        all_applications(a);
        break;
      case 4:
        all_offers(a);
        break;
      case 5:
        MyChat(a);
        break;
      case 6:
        {
          n = !n;
          home();
          break;
        }
    }
  }
}
