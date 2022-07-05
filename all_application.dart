import 'dart:io';

import 'all_users.dart';
import 'create_chat.dart';
import 'list.dart';
import 'model.dart';

application_viewer(String id) {
  if (applications.length == 0) {
    print('No Applications Available');
  } else {
    for (int j = 0; j < applications.length;) {
      if (applications[j].accepted == false) {
        print(applications[j]);
        print(
            '${applications[j].offered} people reached the applicant already ');
        print('Back [B]');
        if (id.startsWith('E')) {
          print('Send Offer [S]');
        }
        j + 1 == applications.length ? '' : print('Next [N]');
        String c = stdin.readLineSync()!;
        if (c.toUpperCase() == 'S') {
          Message new_message = Message(
              id,
              'is considering you application',
              ' Application title:${applications[j].Title}',
              applications[j].Empoyees_id);
          messages.add(new_message);
          CreateChat(id, applications[j].Empoyees_id);
          applications[j].offered = applications[j].offered + 1;
          print('Offer Successfully Sent');
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

all_applications(String id) {
  // for (int i = 0; i < employees.length; i++) {
  //   for (int j = 0; j < employees[i].my_applications.length; j++) {
  //     applications.add(employees[i].my_applications[j]);
  //   }
  // }
  all_users(employees);

  application_viewer(id);
}
