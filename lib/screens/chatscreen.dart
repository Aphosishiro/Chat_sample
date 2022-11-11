import 'package:chat_sample/models/message_model.dart';
import 'package:chat_sample/models/user_model.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  chatbubble(Message chat, bool isSentByMe) {
    if (isSentByMe) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    chat.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(chat.sender.profilepicture),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.topRight,
              child: Text(
                chat.time,
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(chat.sender.profilepicture),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    chat.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.topLeft,
              child: Text(
                chat.time,
              ),
            ),
          ],
        ),
      );
    }
  }

  sendmessagebubble() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.blue),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Type message",
            prefixIcon: const Icon(
              Icons.emoji_emotions,
              color: Colors.blue,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.user.name),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                // reverse: true,
                itemCount: chatscreen.length,
                itemBuilder: (BuildContext context, int index) {
                  Message chat = chatscreen[index];
                  bool isSentByMe = chat.sender.id == currentUser.id;
                  return chatbubble(chat, isSentByMe);
                },
              ),
            ),
            sendmessagebubble(),
          ],
        ),
      ),
    );
  }
}
