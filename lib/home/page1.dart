import 'package:flutter/material.dart';

import '../string.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        SizedBox(
          height: 20,
        ),
        _card(str1, Colors.red),
        _card(str2, Colors.green),
        _card(str3, Colors.red),
      ],
    );
  }

  Card _card(String title, Color _color) {
    return Card(
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _color,
          ),
        ),
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Image.asset(
                    'assets/profile.jpg',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('user name'),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Text(title),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/handheart.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/comment.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/arrow.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
