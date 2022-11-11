import 'package:chat_sample/models/user_model.dart';

class Message {
  User sender;
  String time;
  String text;

  Message({
    required this.sender,
    required this.time,
    required this.text,
  });
}

List<Message> messagescreen = [
  Message(sender: gideon, time: "10:30am", text: "Yo! whats up"),
  Message(sender: kay, time: "9:35am", text: "Baba nla"),
  Message(sender: musa, time: "9:30am", text: "I dey find money"),
  Message(sender: tj, time: "9:20am", text: "boss boss"),
  Message(sender: currentUser, time: "7:30am", text: "Hello there"),
  Message(sender: richard, time: "7:30am", text: "Hello there"),
  Message(sender: babes, time: "7:30am", text: "Hello there"),
];

List<Message> chatscreen = [
  Message(sender: gideon, time: "9:30am", text: "You don see the two million bah?"),
  Message(sender: currentUser, time: "9:31am", text: "Yes, thanks baby"),
  Message(sender: gideon, time: "9:32am", text: "Spend wisely oh"),
  Message(sender: gideon, time: "9:33am", text: "Call me if you need more, lemme freaky your account"),
  Message(sender: currentUser, time: "9:35am", text: "Thanks babyboo"),
  Message(sender: gideon, time: "9:36am", text: "ofcourse ofcourse...you know i am a father figure in the society"),
  Message(sender: gideon, time: "9:36am", text: "I'll take care of you baby"),
  Message(sender: gideon, time: "9:37am", text: "My sunshine"),
];
