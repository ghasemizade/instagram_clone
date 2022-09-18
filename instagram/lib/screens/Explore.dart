import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _getSearchBox(),
              ),
              SliverToBoxAdapter(
                child: _getCategoryTag(),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image(
                            image: AssetImage('assets/Images/item$index.jpg'),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 24,
                ),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  pattern: [
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> category = [
    'All',
    'Sport',
    'Art',
    'Car',
    'House',
    'Tech',
    'Nature',
    'Entertainment',
    'Cooking',
    'Music',
  ];

  Widget _getCategoryTag() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 23,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 30.0,
                    sigmaY: 30.0,
                  ),
                  child: Container(
                    height: 25.0,
                    width: 68.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(0, 0, 0, .3),
                          Color.fromRGBO(0, 0, 0, .3),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 3,
                        ),
                        child: Text(
                          '${category[index]}',
                          style: TextStyle(
                              color: Color(0xff1C1F2E),
                              fontSize: 12.0,
                              fontFamily: 'GB',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget _getSearchBox() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 10,
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30.0,
          sigmaY: 30.0,
        ),
        child: Container(
          height: 46,
          width: 394,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 0, 0, .3),
                Color.fromRGBO(0, 0, 0, .3),
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(13.0),
            ),
            //color: Color(0xff1C1F2E),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Color(0xff1C1F2E),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search...',
                    hintStyle: TextStyle(
                      color: Color(0xff1C1F2E),
                      fontFamily: 'GM',
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
