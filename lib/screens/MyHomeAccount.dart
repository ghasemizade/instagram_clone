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
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          _getImageContainer(),
          _getContainerBox(),
        ],
      ),
    );
  }
}

Widget _getImageContainer() {
  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    top: 0,
    child: Column(
      children: [
        Image(
          image: AssetImage('assets/Images/Rectangle.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getContainerBox() {
  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    top: 150,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff1C1F2E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    ),
  );
}
