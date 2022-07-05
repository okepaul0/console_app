import 'dart:io';

import 'list.dart';
import 'model.dart';

// ChatViewer(String val, String id) {
//   int i = int.parse(val);
//   int k = int.parse(id.substring(1));
//   String n = employees[k].My_chat[i].Reciever_id;
//   int r = int.parse(n.substring(1));
//   Message newmessage = Message(id, '', '');

//   if (id.startsWith('e')) {
//     for(int q = 0;q<employees.l){
//     employees[k].My_chat[i].messages
//   }
//     print('***${employees[k].My_chat[i].Chat_name}***');
//     for (int j = 0; j < employees[k].My_chat[i].messages.length; j++) {
//       print(employees[k].My_chat[i].messages[j]);
//     }
//     print('Send Message [S]');
//     print('Back [B]');
//     String m = stdin.readLineSync()!;
//     if (m.toUpperCase() == 'S') {
//       print('Type Message Here:');
//       newmessage.content = stdin.readLineSync()!;
//       employees[k].messages.add(newmessage);
//       if (n.startsWith('e')) {
//         employees[r].messages.add(newmessage);
//       } else {
//         employers[r].messages.add(newmessage);
//       }
//     } else {}
//   } else {}
// }
// ChatViewer(
//   dynamic a,
// ) {
//   List<String> ids = [];
//   List<Message> new_list = a.messages;
//   for (int i = 0; i < new_list.length; i++) {
//     ids.contains(new_list[i].Reciever_id)
//         ? ''
//         : ids.add(new_list[i].Reciever_id);
//   }
//   for (int j = 0; j < ids.length; j++) {
//     Chat new_chat = Chat(ids[j], '', []);
//     if (ids[j].startsWith('e')) {
//       new_chat.Chat_name = employees[int.parse(ids[j].substring(1))].Name;
//     } else {
//       new_chat.Chat_name = employers[int.parse(ids[j].substring(1))].Name;
//     }
//     a.My_chat.add(new_chat);
//   }
// }

ChatViewer(dynamic a, Chat b) {
  List<Message> chatmessages = [];
  // for (int i = 0; i < a.messages.length; i++) {
  //   if (a.messages[i].Reciever_id == b.Reciever_id) {
  //     chatmessages.add(a.messages[i]);
  //   }
  // }
  ChatMessages(b, chatmessages);
  print('***${b.Chat_name}***');
  int j = 0;
  bool cont = true;
  while (cont) {
    for (j; j < chatmessages.length; j++) {
      print(chatmessages[j]);
    }
    print('[B] Back');
    print('[N] New Message');
    String val = stdin.readLineSync()!;
    if (val.toUpperCase() == 'B') {
      cont = false;
      break;
    } else {
      print('Type Message: ');
      Message newMessage = Message(a.Username, '', '', '');
      if (b.Reciever_id == a.Username) {
        newMessage.Reciever_id = b.sender_id;
      } else {
        newMessage.Reciever_id = b.Reciever_id;
      }
      newMessage.content = stdin.readLineSync()!;
      chatmessages.add(newMessage);
      messages.add(newMessage);
      // if (b.Reciever_id.startsWith('e')) {
      //   messages.add(newMessage);
      // } else if (b.Reciever_id.startsWith('E')) {
      //   messages.add(newMessage);
      // }
    }
  }
}

ChatMessages(Chat chat, List<Message> chatmessages) {
  List<String> a = ['', ''];
  for (int i = 0; i < messages.length; i++) {
    bool c = false;
    bool b = false;
    a[0] = messages[i].sender_id;
    a[1] = messages[i].Reciever_id;
    if (a.contains(chat.Reciever_id)) {
      b = true;
    }
    if (a.contains(chat.sender_id)) {
      c = true;
    }
    if (c == true && b == true) {
      chatmessages.add(messages[i]);
    }
  }
}
