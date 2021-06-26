import 'package:chatapp/Model/chatModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leadingWidth: 70,
          titleSpacing: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                CircleAvatar(
                  child: SvgPicture.asset(
                    widget.chatModel.isGroup
                        ? "assets/Images/groups.svg"
                        : "assets/Images/person.svg",
                    color: Colors.white,
                    height: 37,
                    width: 37,
                  ),
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                )
              ],
            ),
          ),
          title: InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chatModel.name,
                    style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Last seen today at 12:05",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
            IconButton(icon: Icon(Icons.call), onPressed: () {}),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("View Contact"),
                  value: "New Group",
                ),
                PopupMenuItem(
                  child: Text("Media, Links and Docs"),
                  value: "New Broadcast",
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: "Starred Messages",
                ),
                PopupMenuItem(
                  child: Text("Mute Notification"),
                  value: "Payments",
                ),
                PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: "Settings",
                ),
              ];
            })
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin: EdgeInsets.only(left: 8, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                            hintText: "Type a message",
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.emoji_emotions,
                              ),
                              onPressed: () {},
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.attach_file),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt),
                                ),
                              ],
                            ),
                            contentPadding: EdgeInsets.all(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5, left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFF128C7E),
                      child: IconButton(
                        icon: Icon(Icons.mic,color: Colors.white,),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
