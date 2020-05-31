class MessageData{
  String avater;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;
  MessageData(this.avater,this.title,this.subTitle,this.time,this.type);
}
enum MessageType{SYSTEM,PUBLIC,CHAT,GROUP}
List<MessageData> messageData =[ 
  
  new MessageData('hhhh', '大耳朵图图',"hahahah", new DateTime.now(),  MessageType.CHAT),
  new MessageData('hhhh', '大耳朵图图',"hahahah", new DateTime.now(),  MessageType.CHAT),

  ];
 
