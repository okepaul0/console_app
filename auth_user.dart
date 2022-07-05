import 'list.dart';
import 'model.dart';

auth_list() {
  for (int i = 0; i < employees.length; i++) {
    users.add(Auth(employees[i].Username, employees[i].Password));
  }
  for (int i = 0; i < employers.length; i++) {
    users.add(Auth(employers[i].Username, employers[i].Password));
  }
}
