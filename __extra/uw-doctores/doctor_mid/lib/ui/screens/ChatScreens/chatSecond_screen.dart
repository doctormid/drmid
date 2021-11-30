import 'package:doctor_mid/components/component_appbar.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/model/chat_model.dart';
import 'package:flutter/material.dart';

class ChatSecondScreen extends StatefulWidget {
  const ChatSecondScreen({Key key}) : super(key: key);

  @override
  _ChatSecondScreenState createState() => _ChatSecondScreenState();
}

class _ChatSecondScreenState extends State<ChatSecondScreen> {
  final myController = TextEditingController();
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ComponentAppBar.buildAppBar('Chat'),
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ComponentSizedBox.topMargin(size: 10),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                                ),
                                ComponentSizedBox.sideMargin(size: 10),
                                ComponentText.buildTextWidget(
                                    title: 'Alberto Remirez Sanchez'),
                                ComponentSizedBox.sideMargin(size: 100),
                                Icon(
                                  Icons.more_vert,
                                  size: 30,
                                  color: ConstantColor.APP_COLOR,
                                )
                              ],
                            ),
                            Divider(
                              height: 10,
                              thickness: 1,
                            ),
                            ComponentSizedBox.topMargin(size: 10),
                          ]))),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 80),
                  child: ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                  
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? Colors.grey.shade200
                                  : Colors.blue[200]),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Text(
                              messages[index].messageContent,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 8,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        messages.add(ChatMessage(
                            messageContent:
                               myController.text,
                            messageType: "sender"));
                            setState(() {
                              
                            });
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Colors.blue,
                      elevation: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





/* import 'package:doctor_mid/components/component_appbar.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class ChatSecondScreen extends StatefulWidget {
  @override
  _ChatSecondScreenState createState() => _ChatSecondScreenState();
}

class _ChatSecondScreenState extends State<ChatSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: ComponentAppBar.buildAppBar('Chat'),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ComponentSizedBox.topMargin(size: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                        ),
                        ComponentSizedBox.sideMargin(size: 10),
                        ComponentText.buildTextWidget(
                            title: 'Alberto Remirez Sanchez'),
                        ComponentSizedBox.sideMargin(size: 100),
                        Icon(
                          Icons.more_vert,
                          size: 30,
                          color: ConstantColor.APP_COLOR,
                        )
                      ],
                    ),
                    Divider(
                      height: 10,
                      thickness: 1,
                    ),
                    ComponentSizedBox.topMargin(size: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.80,
                                ),
                                child: Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text('hi,how are you  '),
                                ),
                              ),
                              Row(
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: '25/03/2021 -', fontSize: 10),
                                  ComponentText.buildTextWidget(
                                      title: '2:18 pm -', fontSize: 10),
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.95,
                                ),
                                child: Container(
                                  width: 200,
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: ConstantColor.APP_COLOR,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text('hi,i am fine '),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: '10:50 pm -', fontSize: 10),
                                  Icon(
                                    Icons.done_all_outlined,
                                    color: ConstantColor.APP_COLOR,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow()],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Type here'),
                                textCapitalization:
                                    TextCapitalization.sentences,
                              ),
                            ),
                            Icon(
                              Icons.send,
                              color: ConstantColor.APP_COLOR,
                            )
                          ],
                        )),
                    ComponentSizedBox.topMargin(size: 10),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
 */