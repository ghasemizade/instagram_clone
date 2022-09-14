import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class shareButtomSheet extends StatelessWidget {
  const shareButtomSheet({this.controller, Key? key}) : super(key: key);
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(36),
        topRight: Radius.circular(36),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 25.0,
          sigmaY: 25.0,
        ),
        child: Container(
          height: 400,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(28, 31, 46, .3),
                Color.fromRGBO(28, 31, 46, .3),
              ],
            ),
          ),
          child: _getContent(context),
        ),
      ),
    );
  }

  Widget _getContent(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 5,
                    width: 67,
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 46,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, .4),
                      borderRadius: BorderRadius.all(
                        Radius.circular(13.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'search',
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
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
                  SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getItemGrid();
                },
                childCount: 100,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                mainAxisExtent: 100.0,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 80.0),
            ),
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Send',
                style: TextStyle(
                  fontFamily: 'GB',
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getItemGrid() {
    return Column(
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('assets/Images/HoseinAvatar.jpg'),
          ),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          'Hosein',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
