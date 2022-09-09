import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        title: Row(
          children: [
            Image(
              image: AssetImage('assets/Images/moodinger_logo.png'),
              height: 20,
              width: 140,
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
            child: Icon(
              Icons.all_inbox_rounded,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            _getHeaderPost(),
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
                      Container(
                        height: 46,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, .5),
                              Color.fromRGBO(255, 255, 255, .2),
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
                                      color: Colors.white,
                                      fontFamily: 'GM',
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
                                      color: Colors.white,
                                      fontFamily: 'GM',
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
                    ],
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

class _getHeaderPost extends StatelessWidget {
  const _getHeaderPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                color: Colors.white,
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
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        SizedBox(
          width: 10.0,
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
    return Row(
      children: [
        // story 1
        Padding(
          padding: EdgeInsets.only(left: 27.0, top: 20.0),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF35383),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1C1F2E),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
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
        ),
        // story 2
        // Padding(
        //   padding: EdgeInsets.only(left: 27.0, top: 20.0),
        //   child: Container(
        //     width: 64,
        //     height: 64,
        //     decoration: BoxDecoration(
        //       color: Color(0xffF35383),
        //       borderRadius: BorderRadius.circular(40),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(3.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color(0xff1C1F2E),
        //           borderRadius: BorderRadius.circular(30),
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(4.0),
        //           child: CircleAvatar(
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(30.0),
        //               child: Image(
        //                 image: AssetImage('assets/Images/user_1.png'),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // // story 3
        // Padding(
        //   padding: EdgeInsets.only(left: 27.0, top: 20.0),
        //   child: Container(
        //     width: 64,
        //     height: 64,
        //     decoration: BoxDecoration(
        //       color: Color(0xffF35383),
        //       borderRadius: BorderRadius.circular(40),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(3.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color(0xff1C1F2E),
        //           borderRadius: BorderRadius.circular(30),
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(4.0),
        //           child: CircleAvatar(
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(30.0),
        //               child: Image(
        //                 image: AssetImage('assets/Images/user_2.png'),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // // story 4
        // Padding(
        //   padding: EdgeInsets.only(left: 27.0, top: 20.0),
        //   child: Container(
        //     width: 64,
        //     height: 64,
        //     decoration: BoxDecoration(
        //       color: Color(0xffF35383),
        //       borderRadius: BorderRadius.circular(40),
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.all(3.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color(0xff1C1F2E),
        //           borderRadius: BorderRadius.circular(30),
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(4.0),
        //           child: CircleAvatar(
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(30.0),
        //               child: Image(
        //                 image: AssetImage('assets/Images/user_4.png'),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
