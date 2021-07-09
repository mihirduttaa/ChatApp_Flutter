import 'package:chatapp/CustomUI/customCard.dart';
import 'package:chatapp/Model/chatModel.dart';
import 'package:chatapp/Screens/selectContact.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Mihir Dutta",
      isGroup: false,
      currentMessage: "Hey Mihir",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Mihir Dutta",
      isGroup: false,
      currentMessage: "Hey Mihir",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Mihir Dutta",
      isGroup: false,
      currentMessage: "Hey Mihir",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Mihir Dutta",
      isGroup: true,
      currentMessage: "Hey Mihir",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Mihir Dutta",
      isGroup: false,
      currentMessage: "Hey Mihir",
      time: "4:00",
      icon: "person.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index)=>CustomCard(chatModel: chats[index],),
      ),
    );
  }
}
