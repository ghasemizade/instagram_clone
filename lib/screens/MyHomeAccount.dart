import 'package:flutter/material.dart';

class MyHomeAccount extends StatefulWidget {
  MyHomeAccount({Key? key}) : super(key: key);

  @override
  State<MyHomeAccount> createState() => _MyHomeAccountState();
}

class _MyHomeAccountState extends State<MyHomeAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              bottom: PreferredSize(
                child: Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1F2E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(10),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/Images/Rectangle.png',
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 150,
              backgroundColor: Color(0xff1C1F2E),
            )
          ];
        }),
        body: _getContainerBox(),
      ),
    );
  }
}

// Widget _getImageContainer() {
//   return Positioned(
//     left: 0,
//     right: 0,
//     bottom: 0,
//     top: 0,
//     child: Column(
//       children: [
//         Image(
//           image: AssetImage('assets/Images/Rectangle.png'),
//           fit: BoxFit.cover,
//         ),
//       ],
//     ),
//   );
// }

Widget _getContainerBox() {
  return Container(
    // decoration: BoxDecoration(
    //   color: Color(0xff1C1F2E),
    //   borderRadius: BorderRadius.only(
    //     topLeft: Radius.circular(30),
    //     topRight: Radius.circular(30),
    //   ),
    // ),
    child: Padding(
      padding: EdgeInsets.only(top: 40, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xfff35383),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(17),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(13),
                ),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('assets/Images/HoseinAvatar.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "HoseinGhasemizade",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Programmer",
                  style: TextStyle(
                      color: Color(
                    0xffc5c5c5,
                  )),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset('assets/Images/icon_profile_edit.png'),
        ],
      ),
    ),
  );
}
