import 'package:chatapp/CustomUI/contactCard.dart';
import 'package:chatapp/Model/chatModel.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Select Contact", style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),),
          Text(
            "256 contacts",
            style: TextStyle(fontSize: 13),
          ),],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search,size: 26), onPressed: (){}),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text("Invite a friend"),
                value: "Invite a friend",
              ),
              PopupMenuItem(
                child: Text("Contacts"),
                value: "Contacts",
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                value: "Refresh",
              ),
              PopupMenuItem(
                child: Text("Help"),
                value: "Help",
              ),

            ];
          })

        ],
      ),
      body: ListView(
        children: [
          ContactCard(),
        ],
      ),
    );
  }
}
