import 'list.dart';
import 'model.dart';

all_users(dynamic a) {
  if (a[0].Username.startsWith('E')) {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[i].my_offers.length; j++) {
        offers.add(a[i].my_offers[j]);
      }
    }
  } else {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[i].my_applications.length; j++) {
        applications.add(a[i].my_applications[j]);
      }
    }
  }
}
