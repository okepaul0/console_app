import 'dart:io';

import './employee_accoubt.dart';
import 'employer_account.dart';

CreateAccount() {
  int val;
  print('***Create Account***');
  print('***Account type***');
  print('[1]  Employee');
  print('[2]  Employer');
  val = int.parse(stdin.readLineSync()!);
  switch (val) {
    case 1:
      Employee_account('');
      break; //Employer_account();
    case 2:
      Employer_account('');
      break;
  }
}


 //numbers[i] = int.parse(stdin.readLineSync()!);