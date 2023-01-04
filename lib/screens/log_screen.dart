import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class logScreen extends StatefulWidget {
  logScreen({Key? key}) : super(key: key);

  @override
  State<logScreen> createState() => _logScreenState();
}

class _logScreenState extends State<logScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xff1C1F2E),
              height: 55,
              child: TabBar(
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'GB',
                ),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 18),
                dragStartBehavior: DragStartBehavior.down,
                indicatorColor: Color(0xffF35383),
                controller: _tabController,
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => _getRow(),
                          childCount: 20,
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Text('Hosein'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 6,
            width: 6,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/Images/HoseinAvatar.jpg"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'HoseinGhasemizade',
                    style: TextStyle(
                        fontFamily: 'GB', color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Started Following',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(
                        0xffC5C5C5,
                      ),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'You',
                    style: TextStyle(
                        fontFamily: 'GB', color: Colors.white, fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3min',
                    style: TextStyle(
                      fontFamily: 'GM',
                      color: Color(
                        0xffC5C5C5,
                      ),
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Message',
                style: TextStyle(
                  fontFamily: 'GB',
                  color: Color(0xffc5c5c5),
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Color(0xffC5c5c5),
                  width: 2,
                ),
              ),
            ),
            // child: SizedBox(
            //   height: 40,
            //   width: 40,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(10),
            //     ),
            //     child: FittedBox(
            //       fit: BoxFit.cover,
            //       child: Image.asset("assets/Images/item1.jpg"),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
