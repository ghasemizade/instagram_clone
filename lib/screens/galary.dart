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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 17.0,
              ),
              child: Container(
                height: 375,
                width: 394,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image(
                      image: AssetImage('assets/Images/item0.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            _getGridView(),
          ],
        ),
      ),
    );
  }
}

Widget _getGridView() {
  return Expanded(
    child: GridView.builder(
      itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 128.0,
            width: 128.0,
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image(
                image: AssetImage('assets/Images/item$index.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    ),
  );
}
