import 'dart:io';

import 'create_offer.dart';
import 'list.dart';

MyOffer(String id) {
  print('***MY OFFERS***');
  print('Enter 1 to Add Offer');
  print('Enter 2 to View Offers');
  print('Enter 3 to return to User page');
  String k = stdin.readLineSync()!;
  switch (int.parse(k)) {
    case 1:
      CreateOffer(id);
      break;
    case 2:
      view_offer(id);
      break;
    case 3:
      break;
  }
}

view_offer(String id) {
  int i = int.parse(id.substring(1));
  if (employers[i].my_offers.isEmpty) {
    print('You Have No Offers Created');
  } else {
    for (int j = 0; j < employers[i].my_offers.length;) {
      print(employers[i].my_offers[j]);
      print('Delete Offer [D]');
      print('Back [B]');
      j + 1 == employers[i].my_offers.length ? '' : print('Next [N]');
      String c = stdin.readLineSync()!;
      if (c.toUpperCase() == 'D') {
        employers[i].my_offers.remove(employers[i].my_offers[j]);
        print('Offer Successfully Deleted');
        if (employers[i].my_offers.isEmpty) {
          print('You Have No Offers Left');
        }
      } else if (c.toUpperCase() == 'N') {
        j++;
      } else if (c.toUpperCase() == 'B') {
        break;
      }
    }
  }
}
