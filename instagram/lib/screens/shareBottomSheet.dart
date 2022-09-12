import 'dart:ui';

import 'package:flutter/material.dart';

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
          sigmaX: 20.0,
          sigmaY: 20.0,
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
          child: _getContent(controller: controller),
        ),
      ),
    );
  }
}

class _getContent extends StatelessWidget {
  const _getContent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 4,
      ),
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            print('on tap me');
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        );
      }),
    );
  }
}
