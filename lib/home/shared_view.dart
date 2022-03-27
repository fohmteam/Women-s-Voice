import 'package:flutter/material.dart';
import 'package:womensvoice/string.dart';

class SharedView extends StatefulWidget {
  SharedView({Key? key}) : super(key: key);

  @override
  State<SharedView> createState() => _SharedViewState();
}

class _SharedViewState extends State<SharedView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        _card(str2, Colors.green),
        _card(str4, Colors.green),
        _card(str2, Colors.green),
        _card(str4, Colors.green),
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
