import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contacts_silder_list.dart';
import './contacts_item.dart';
import './contacts_header.dart';
import './contacts_vo.dart';


class Contacts extends StatefulWidget {
  @override
  ContactState createState() => new ContactState();

}

class ContactState extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContactSiderList(
          items: contactData,
          headerBuilder: (BuildContext context, int index){
            return Container(
              child: ContactHeader(),
            );
          },
          itemBuilder:  (BuildContext context, int index){
            return Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactItem(item:contactData[index]),
            );
          },
          sectionBuilder: (BuildContext context, int index){
            return Container(
              height: 32.0,
              padding: const EdgeInsets.only(left:14.0),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].seationKey,
                style: TextStyle(fontSize: 14.0,color: Color(0xff909090)),
              ),
            );
          },
      ),
    );
  }
}
