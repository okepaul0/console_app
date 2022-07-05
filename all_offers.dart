import 'dart:io';

import 'all_users.dart';
import 'create_chat.dart';
import 'list.dart';
import 'model.dart';

offer_viewer(String id) {
  if (offers.length == 0) {
    print(' No Offer Available');
  } else {
    for (int j = 0; j < offers.length;) {
      if (offers[j].accepted == false) {
        print(offers[j]);
        print('${offers[j].applicants} people applied already ');
        print('Back [B]');
        if (id.startsWith('e')) {
          print('Apply [A]');
        }
        j + 1 == offers.length ? '' : print('Next [N]');
        String c = stdin.readLineSync()!;
        if (c.toUpperCase() == 'A') {
          Message new_message = Message(id, 'I am applying for this offer',
              'Offer Title: ${offers[j].Title}', offers[j].Empoyers_id);
          messages.add(new_message);
          CreateChat(id, offers[j].Empoyers_id);
          offers[j].applicants = offers[j].applicants + 1;
          print('Application Successfully Sent');
        } else if (c.toUpperCase() == 'N') {
          j++;
        } else if (c.toUpperCase() == 'B') {
          break;
        }
      } else {
        j++;
      }
    }
  }
}

all_offers(String id) {
  // for (int i = 0; i < employers.length; i++) {
  //   for (int j = 0; j < employers[i].my_offers.length; j++) {
  //     offers.add(employers[i].my_offers[j]);
  //   }
  // }
  all_users(employers);
  offer_viewer(id);
}
