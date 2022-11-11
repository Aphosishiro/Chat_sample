import 'package:chat_sample/models/message_model.dart';
import 'package:flutter/material.dart';
import 'chatscreen.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          title: const Text(
            "CERESENSE CHAT",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.chat_rounded,
            color: Colors.white,
          ),
        ),
        body: ListView.builder(
          itemCount: messagescreen.length,
          itemBuilder: (BuildContext context, int index) {
            Message chat = messagescreen[index];
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Chatscreen(
                            user: chat.sender,
                          )));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(chat.sender.profilepicture),
                          radius: 35,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 300,
                          // color: Colors.green,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    chat.sender.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  // const Spacer(),
                                  Text(
                                    chat.time,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  chat.text,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        chat.sender.isOffline
                            ? const CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 5,
                              )
                            : const CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
