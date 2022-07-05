class Employer {
  String Name;
  String Age;
  String BusinessName;
  String Staff_no;
  String Username;
  List<String> Workers;
  String Id;
  String Password;
  List<Offer> my_offers;
  List<Chat> My_chat;

  Employer(this.Name, this.Age, this.BusinessName, this.Staff_no, this.Workers,
      this.Id, this.Username, this.Password, this.my_offers, this.My_chat);

  String toString() {
    return 'name:' +
        Name +
        '\n' +
        'age:' +
        Age +
        '\n' +
        'username:' +
        Username +
        '\n';
  }
}

class Auth {
  String Username;
  String Password;
  Auth(this.Username, this.Password);

  @override
  String toString() {
    return 'Username' + Username + 'Password' + Password;
  }

  //@override
  // bool operator ==(other) {
  //   return (other is Auth) &&
  //       other.Password == Password &&
  //       other.Username == Username;
  // }
}

class Application {
  String Employee_Name;
  String Business_Name;
  String Salary;
  String Title;
  String CV;
  String Empoyees_id;
  int offered = 0;
  bool accepted = false;

  Application(
      {required this.Employee_Name,
      required this.Business_Name,
      required this.Salary,
      required this.CV,
      required this.Empoyees_id,
      required this.Title});
  // Application.fromJson(Map<String, dynamic> json) {
  //   Employee_Name = json['name'];
  //   Business_Name = json['age'];
  //   Salary = json['hobby'];
  //   CV = json[''];
  //   Empoyees_id = json[''];
  //   Title = json[''];
  // }
  @override
  String toString() {
    return 'Employee Name: ' +
        Employee_Name +
        '\n' +
        'Business Name: ' +
        Business_Name +
        '\n' +
        'Salary Offer:' +
        Salary +
        '\n' +
        'CV:' +
        CV +
        '\n';
  }
}

class Offer {
  String Employer_Name;
  String Business_Name;
  String Salary;
  String TC;
  String Title;
  String Empoyers_id;
  int applicants = 0;
  bool accepted = false;

  Offer(
      {required this.Employer_Name,
      required this.Business_Name,
      required this.Salary,
      required this.TC,
      required this.Empoyers_id,
      required this.Title});

  @override
  String toString() {
    return 'Employer Name: ' +
        Employer_Name +
        '\n' +
        'Business Name: ' +
        Business_Name +
        '\n' +
        'Salary Offer:' +
        Salary +
        '\n' +
        'Terms and Conditions:' +
        TC +
        '\n';
  }
}

class Employee {
  String Name;
  String Age;
  String BusinessName;
  String Employer_name;
  String salary;
  List<Application> my_applications;
  String FOS;
  String Username;
  String Password;
  String CV;
  List<Chat> My_chat;
  Employee(
      this.Name,
      this.Age,
      this.BusinessName,
      this.Employer_name,
      this.salary,
      this.my_applications,
      this.FOS,
      this.Username,
      this.Password,
      this.CV,
      this.My_chat);
  @override
  String toString() {
    return 'Name: ' +
        Name +
        '\n' +
        'Age: ' +
        Age +
        '\n' +
        'Username:' +
        Username +
        '\n' +
        'Business Name:' +
        BusinessName +
        '\n' +
        'Employer Name:' +
        Employer_name +
        '\n' +
        'Field Of Study:' +
        FOS +
        '\n' +
        'Username:' +
        Username +
        '\n' +
        'Salary:' +
        salary +
        '\n';
  }
}

class Message {
  String sender_id;
  String content;
  dynamic attachment;
  String Reciever_id;
  Message(this.sender_id, this.content, this.attachment, this.Reciever_id);

  @override
  String toString() {
    return 'Sender Id: ' +
        sender_id +
        '\n' +
        'Content: ' +
        content +
        '\n' +
        'Attachment: ' +
        attachment +
        '\n';
  }
}

class Chat {
  String Reciever_id;
  String sender_id;
  String Chat_name;
  List<Message> messages;
  Chat(this.Reciever_id, this.sender_id, this.Chat_name, this.messages);
  @override
  String toString() {
    return Chat_name;
  }
}
