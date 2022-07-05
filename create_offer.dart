import 'dart:io';

import 'list.dart';
import 'model.dart';
import 'user_page.dart';

CreateOffer(String id) {
  Employer current = employers[int.parse(id.substring(1))];
  Offer new_offer = Offer(
      Employer_Name: current.Name,
      Business_Name: current.BusinessName,
      Salary: '',
      TC: '',
      Empoyers_id: current.Username,Title: '');
  print('***Create Offer***');
  print('Business Name : ${new_offer.Business_Name}');
  print('Employer Id : ${new_offer.Empoyers_id}');
  print('Offer Title : ');
  new_offer.Title = stdin.readLineSync()!;
  print('Create Job Requirement : ');
  new_offer.TC = stdin.readLineSync()!;
  print('Input Salary Offer :');
  new_offer.Salary = stdin.readLineSync()!;
  print('Do you want to create this offer [Y/N]: ');
  String val = stdin.readLineSync()!;
  if (val.toUpperCase() == 'Y') {
    employers[int.parse(id.substring(1))].my_offers.add(new_offer);
    print('Offer Successfully Created ');
  }
}
