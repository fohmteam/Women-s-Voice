import 'package:flutter/material.dart';
import 'package:womensvoice/home/shared_view.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            _header(),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        icon: FittedBox(
                          child: Text(
                            'Shared',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        icon: FittedBox(
                          child: Text(
                            'Likes/\nComments',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        icon: FittedBox(
                          child: Text(
                            'Followed',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        icon: FittedBox(
                          child: Text(
                            'Follower',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SharedView(),
                        Container(),
                        Container(),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _header() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _profile(),
        about(),
      ],
    );
  }

  Expanded about() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            maxLines: 4,
            decoration: new InputDecoration.collapsed(
              hintText: 'About...',
            ),
          ),
        ),
      ),
    );
  }

  Stack _profile() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                'assets/edit.png',
                width: 20,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            'User Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
