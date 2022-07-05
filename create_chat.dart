import 'dart:io';

import 'chat_list_update.dart';
import 'list.dart';
import 'model.dart';

CreateChat(String id, String val) {
  Message newmessage = Message('', '', '', '');
  newmessage.sender_id = id;
  bool empty = true;
  print('***New Chat***');
  print('[B] Back');
  if (val.isEmpty) {
    empty;
    print('User Id:');
    val = stdin.readLineSync()!;
  } else {
    empty = false;
  }
  if (val.toUpperCase() == 'B') {
  } else {
    // int i = int.parse(val.substring(1));
    // int k = int.parse(id.substring(1));
    if (empty == true) {
      print('Enter Message here: ');
      newmessage.content = stdin.readLineSync()!;
      newmessage.Reciever_id = val;
      Chat newchat = Chat(val, id, '', []);
      ChaListUpdate(newchat,chats);
      messages.add(newmessage);
      print('Message Successfully Sent');
    }else{
      newmessage.Reciever_id = val;
       Chat newchat = Chat(val, id, '', []);
       ChaListUpdate(newchat,chats);
    }
    // if (val.startsWith('e')) {
    //   employees[i].messages.add(newmessage);
    // } else {
    //   employers[i].messages.add(newmessage);
    // }
    // if (id.startsWith('e')) {
    //   employees[k].messages.add(newmessage);
    // } else {
    //   employers[k].messages.add(newmessage);
    // }

  }
}
