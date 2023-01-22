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
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: ((context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                // pinned: true,
                toolbarHeight: 50,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 18, top: 20),
                    child: Icon(Icons.menu),
                  ),
                ],
                bottom: PreferredSize(
                  child: Container(
                    height: 15,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                  preferredSize: Size.fromHeight(5),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/Images/Rectangle.png',
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 150,
                backgroundColor: Color(0xff1C1F2E),
              ),
              SliverToBoxAdapter(
                child: _getContainerBox(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: TabBarViewDelegate(
                  TabBar(
                    tabs: [
                      Tab(
                        text: "test1",
                      ),
                      Tab(
                        text: "test2",
                      )
                    ],
                  ),
                ),
              ),
            ];
          }),
          body: TabBarView(
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
        ),
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
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Image.asset('assets/Images/icon_profile_edit.png'),
          ),
        ],
      ),
    ),
  );
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff1C1F2E),
      child: _tabBar,
      // child: ClipRRect(
      //   child: FittedBox(
      //     fit: BoxFit.cover,
      //     child: Image.asset('assets/Images/pattern1.png'),
      //   ),
      // ),
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height + 5;

  @override
  double get minExtent => _tabBar.preferredSize.height + 5;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
