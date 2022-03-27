import 'package:flutter/material.dart';
import 'package:womensvoice/core/base_state.dart';
import 'package:womensvoice/home/page1.dart';
import 'package:womensvoice/home/page2.dart';
import 'package:womensvoice/home/page3.dart';
import 'package:womensvoice/home/page4.dart';
import 'package:womensvoice/home/page5.dart';

class MyHomePage extends StatefulWidget {
  @override
  State createState() => new MyHomePageState();
}

class MyHomePageState extends BaseState<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  late int _index;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Women's Voice",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            'assets/heart.png',
            width: 50,
          ),
        ),
        actions: [
          _controller.index == 0
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'assets/message.png',
                    width: 45,
                  ),
                )
              : _controller.index == 2
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Text(
                          'Oto\nMode',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : _controller.index == 3
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            'assets/message.png',
                            width: 45,
                          ),
                        )
                      : _controller.index == 4
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                'assets/setting.png',
                                width: 45,
                              ),
                            )
                          : Container(),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Page1(),
          Page2(),
          Page3(),
          Page5(),
          Page4(),
        ],
      ),
    );
  }

  TabBar bottomBar() {
    return TabBar(
      controller: _controller,
      padding: EdgeInsets.only(
        bottom: bottomPadding,
        top: 5,
      ),
      onTap: (index) {
        setState(() {});
      },
      tabs: <Tab>[
        Tab(
          icon: Image.asset(
            'assets/home.png',
            width: 30,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.add,
            color: Colors.black,
            size: 35,
          ),
        ),
        Tab(
          icon: FittedBox(
            child: Text(
              'SOS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ),
        ),
        Tab(
          icon: Image.asset(
            'assets/notify.png',
            width: 30,
          ),
        ),
        Tab(
          icon: Image.asset(
            'assets/profile.jpg',
            width: 35,
          ),
        ),
      ],
    );
  }
}
