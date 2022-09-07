import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff4E3CC9),
            Color(0xffF35383),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _getImageContainer(),
            _getContainerBox(),
          ],
        ),
      ),
    );
  }

  Widget _getImageContainer() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 80,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/Images/rocket.png'),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _getContainerBox() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Image(
                        image: AssetImage('assets/Images/mood.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 44.0,
                    ),
                    child: SizedBox(
                      height: 45.0,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '  Email',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xffC5C5C5),
                              width: 3.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color(0xffF35383),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 44.0,
                    ),
                    child: SizedBox(
                      height: 45.0,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: '  Password ',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xffC5C5C5),
                              width: 3.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3.0,
                              color: Color(0xffF35383),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
