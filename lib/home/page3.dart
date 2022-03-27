import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      children: [
        emergency(),
        shareMyLocation(),
        sendSOSmessage(),
        buttonSection(),
      ],
    );
  }

  Row buttonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(20)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          child: Text(
            "Call 112",
            style: TextStyle(color: Colors.black),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(20)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          child: Text(
            "Call 155",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Container sendSOSmessage() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Send SOS message',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          checkListTile('My emergency contacts', value1),
          checkListTile('All my contacts', value2),
          checkListTile('Share with the police', value3),
          checkListTile('Share on my profile', value3),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Container shareMyLocation() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Share my location:',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          checkListTile('My emergency contacts', value1),
          checkListTile('Share on my profile', value2),
          checkListTile('Share with the police', value3),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget checkListTile(String title, bool xvalue) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Checkbox(
            value: value1,
            onChanged: (bool? _value) {
              setState(() {
                value1 = _value!;
              });
            },
          ),
          Text(title),
        ],
      ),
    );
  }

  Container emergency() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'What is your emergency?',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: 2,
              decoration: new InputDecoration.collapsed(
                hintText: 'Text...',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
