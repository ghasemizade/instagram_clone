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
          // child: CustomScrollView(
          //   slivers: [
          //     SliverToBoxAdapter(
          //       child: _getSearchBox(),
          //     ),
          //     SliverToBoxAdapter(
          //       child: _getCategoryTag(),
          //     ),
          child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
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
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              color: Colors.amber,
            );
          },
        ),
      )),
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
    return Container(
      height: 23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: Container(
              height: 25.0,
              width: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(39, 43, 64, 1),
                    Color.fromRGBO(39, 43, 64, 1),
                  ],
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child: Text(
                    '${category[index]}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontFamily: 'GM',
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

Widget _getSearchBox() {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 17,
      vertical: 24,
    ),
    child: ClipRRect(
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
                Color.fromRGBO(39, 43, 64, 1),
                Color.fromRGBO(39, 43, 64, 1),
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
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search...',
                    hintStyle: TextStyle(
                      color: Colors.white,
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
