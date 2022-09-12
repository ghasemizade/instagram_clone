import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/screens/shareBottomSheet.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1C1F2E),
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Color(0xff1C1F2E),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image(
              image: AssetImage('assets/Images/moodinger_logo.png'),
              height: 20,
              width: 140,
              color: Color(0xff1C1F2E),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 15,
            ),
            height: 24,
            width: 24,
            child: IconButton(
              icon: Icon(
                Icons.all_inbox_rounded,
                color: Color(0xff1C1F2E),
              ),
              onPressed: () {
                print("tap me");
              },
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return DraggableScrollableSheet(
                        initialChildSize: .35,
                        minChildSize: .25,
                        maxChildSize: .75,
                        builder: ((context, controller) {
                          return shareButtomSheet(
                            controller: controller,
                          );
                        }),
                      );
                    },
                  );
                },
                child: Text('open buttomSheet'),
              ),
            ),
            SliverToBoxAdapter(
              child: _getStorypack(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      _getPostList(),
                    ],
                  );
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(
//                 onPressed: () {
//                   showModalBottomSheet(
//                     barrierColor: Colors.transparent,
//                     backgroundColor: Colors.transparent,
//                     context: context,
//                     isScrollControlled: true,
//                     builder: (BuildContext context) {
//                       return DraggableScrollableSheet(
//                         initialChildSize: .35,
//                         minChildSize: .25,
//                         maxChildSize: .75,
//                         builder: ((context, controller) {
//                           return shareButtomSheet(
//                             controller: controller,
//                           );
//                         }),
//                       );
//                     },
//                   );
//                 },
//                 child: Text('open buttomSheet'),
//               ),
//               SizedBox(
//                 height: 120.0,
//                 child: _getStorypack(),
//               ),
//               _getPostList(),

Widget _getStorypack() {
  return Container(
    height: 110,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return index == 0 ? _getAddStory() : _getStoryBox();
      }),
    ),
  );
}

Widget _getPostList() {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: ((context, index) {
      return _getPost();
    }),
  );
}

class _getPost extends StatelessWidget {
  const _getPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _getStoryBox(),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'HoseinGhasemizade',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Color(0xff1C1F2E),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'frontend developer',
                  style: TextStyle(
                    fontFamily: 'GB',
                    color: Color(0xff1C1F2E),
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              color: Color(0xff1C1F2E),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          height: 440,
          width: 394,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('assets/Images/post_cover1.jpg'),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20.0,
                        sigmaY: 20.0,
                      ),
                      child: Container(
                        height: 46,
                        width: 375,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(28, 31, 46, .5),
                              Color.fromRGBO(28, 31, 46, .5),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/Images/icon_hart.png'),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    '1.3K',
                                    style: TextStyle(
                                      color: Color(0xff1C1F2E),
                                      fontFamily: 'GB',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/Images/icon_comments.png'),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    '666',
                                    style: TextStyle(
                                      color: Color(0xff1C1F2E),
                                      fontFamily: 'GB',
                                    ),
                                  ),
                                ],
                              ),
                              Image(
                                image:
                                    AssetImage('assets/Images/icon_share.png'),
                              ),
                              Image(
                                image:
                                    AssetImage('assets/Images/icon_save.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _getStoryBox extends StatelessWidget {
  const _getStoryBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 27.0, top: 20.0),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xff1C1F2E),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image(
                        image: AssetImage('assets/Images/HoseinAvatar.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Hosein',
            style: TextStyle(color: Color(0xff1C1F2E), fontSize: 13),
          ),
        ],
      ),
    );
  }
}

Widget _getAddStory() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: 27.0,
          top: 20.0,
        ),
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Color(0xffF35383),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage('assets/Images/icon_plus.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          'Add Story',
          style: TextStyle(color: Color(0xff1C1F2E), fontSize: 13),
        ),
      ),
    ],
  );
}
