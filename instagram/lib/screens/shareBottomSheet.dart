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
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    // return GridView.builder(
    //   controller: controller,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20,
    //     crossAxisCount: 4,
    //   ),
    //   itemBuilder: ((context, index) {
    //     return GestureDetector(
    //       onTap: () {
    //         print('on tap me');
    //       },
    //       child: Container(
    //         decoration: BoxDecoration(
    //           border: Border.all(color: Colors.blue),
    //           borderRadius: BorderRadius.circular(20.0),
    //         ),
    //       ),
    //     );
    //   }),
    // );

    return CustomScrollView(
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
                  Image(
                    image:
                        AssetImage('assets/Images/icon_share_bottomsheet.png'),
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
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.blue,
            );
          }),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ],
    );
  }
}
