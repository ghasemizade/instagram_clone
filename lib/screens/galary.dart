import 'package:flutter/material.dart';

class galaryItems extends StatefulWidget {
  galaryItems({Key? key}) : super(key: key);

  @override
  State<galaryItems> createState() => _galaryItemsState();
}

class _galaryItemsState extends State<galaryItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Post',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 30.0,
            ),
            Spacer(),
            Text(
              'Next',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      body: SafeArea(
        child: Text('Hosein'),
      ),
    );
  }
}
