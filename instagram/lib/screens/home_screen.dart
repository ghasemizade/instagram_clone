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
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 294,
              width: 394,
              decoration: BoxDecoration(),
              child: Image(
                image: AssetImage('assets/Images/post1.jpg'),
              ),
            ),
          ],
        ),
      ),
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
