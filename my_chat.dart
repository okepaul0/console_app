import 'dart:io';

import 'chat_list_update.dart';
import 'chat_viewer.dart';
import 'create_chat.dart';
import 'list.dart';
import 'model.dart';

MyChat(String id) {
  String c = id;
  int i = int.parse(c.substring(1));

  bool cont = true;
  while (cont == true) {
    print('My Chats');
    if (c.startsWith('e')) {
      ChatList(employees[i]);
      if (employees[i].My_chat.length == 0) {
        print(' No Chat Available');
        print('[1] Create Chat');
        print('[2] Back');
        String val = stdin.readLineSync()!;
        switch (int.parse(val)) {
          case 1:
            CreateChat(c, '');
            break;
          case 2:
            break;
        }
      } else {
        for (int j = 0; j < employees[i].My_chat.length; j++) {
          print('[${j + 1}] ${employees[i].My_chat[j].Chat_name}');
        }
        print('[B] Back');
        print('[A] Add Chat');
        String val = stdin.readLineSync()!;
        if (val.toUpperCase() == 'B') {
          cont = false;
          break;
        } else if (val.toUpperCase() == 'A') {
          CreateChat(c, '');
        } else {
          ChatViewer(employees[i], employees[i].My_chat[int.parse(val) - 1]);
        }
      }
    } else if (id.startsWith('E')) {
      ChatList(employers[i]);
      if (employers[i].My_chat.isEmpty) {
        print(' No Chat Available');
        print('[1] Create Chat');
        print('[2] Back');
        String val = stdin.readLineSync()!;
        switch (int.parse(val)) {
          case 1:
            CreateChat(c, '');
            break;
          case 2:
            break;
        }
      } else {
        for (int j = 0; j < employers[i].My_chat.length; j++) {
          print('[${j + 1}] ${employers[i].My_chat[j].Chat_name}');
        }
        print('[B] Back');
        print('[A] Add Chat');
        String val = stdin.readLineSync()!;
        if (val.toUpperCase() == 'B') {
          cont = false;
          break;
        } else if (val.toUpperCase() == 'A') {
          CreateChat(c, '');
        } else {
          ChatViewer(employers[i], employers[i].My_chat[int.parse(val) - 1]);
        }
      }
    }
  }
}

ChatList(dynamic user) {
  for (int i = 0; i < chats.length; i++) {
    if (chats[i].Reciever_id == user.Username ||
        chats[i].sender_id == user.Username) {
      if (user.Username == chats[i].sender_id) {
        chats[i].Reciever_id.startsWith('e')
            ? chats[i].Chat_name =
                employees[int.parse(chats[i].Reciever_id.substring(1))].Name
            : chats[i].Chat_name =
                employers[int.parse(chats[i].Reciever_id.substring(1))].Name;
      } else if (user.Username == chats[i].Reciever_id) {
        chats[i].sender_id.startsWith('e')
            ? chats[i].Chat_name =
                employees[int.parse(chats[i].sender_id.substring(1))].Name
            : chats[i].Chat_name =
                employers[int.parse(chats[i].sender_id.substring(1))].Name;
      }
      ChaListUpdate(chats[i], user.My_chat);
    } else {}
  }
}
// ChatList(
//   dynamic a,
// ) {
//   List<Message> new_list = a.messages;
//   for (int i = 0; i < new_list.length; i++) {
//     if (ids.contains(new_list[i].Reciever_id)) {
//       continue;
//     } else {
//       ids.add(new_list[i].Reciever_id);
//     }
//   }
//   for (int j = 0; j < ids.length; j++) {
//     Chat new_chat = Chat(ids[j], '', []);
//     if (ids[j].startsWith('e')) {
//       new_chat.Chat_name = employees[int.parse(ids[j].substring(1))].Name;
//     } else if (ids[j].startsWith('E')) {
//       new_chat.Chat_name = employers[int.parse(ids[j].substring(1))].Name;
//     }
//     a.My_chat.add(new_chat);
//   }
// }
