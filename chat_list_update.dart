import 'list.dart';
import 'model.dart';

ChaListUpdate(Chat newchat, List<Chat> k) {
  List<String> a = ['', ''];
  if (k.isEmpty) {
    k.add(newchat);
  } else {
    for (int i = 0; i < k.length; i++) {
      bool c = false;
      bool b = false;
      a[0] = k[i].sender_id;
      a[1] = k[i].Reciever_id;
      if (a.contains(newchat.Reciever_id)) {
        b = true;
      }
      if (a.contains(newchat.sender_id)) {
        c = true;
      }
      if (c == true && b == true) {
        break;
      } else if (c == false || b == false) {
        k.add(newchat);
      }
    }
  }
}
