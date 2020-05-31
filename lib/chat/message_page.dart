import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './message_data.dart';
import './message_item.dart';

class MessagePage extends StatefulWidget{
  @override
  MessagePageState createState()=> new MessagePageState();
}
class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context,int index) {
        return new MessageItem(messageData[index]);
        
      })
    );
  }
}