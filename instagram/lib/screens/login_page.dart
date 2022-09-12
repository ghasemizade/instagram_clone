import 'dart:ui';

import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  FocusNode wicher0 = FocusNode();
  FocusNode wicher1 = FocusNode();
  @override
  void initState() {
    super.initState();
    wicher0.addListener(() {
      setState(() {});
    });
    wicher1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Color(0xff1C1F2E),
            // Color(0xff1C1F2E),
            Colors.white,
            Colors.white
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
      top: 40,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/Images/welcome_image.png'),
            fit: BoxFit.cover,
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
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xff1C1F2E),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 0, 0, .3),
                      Color.fromRGBO(0, 0, 0, .2),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign in to ',
                            style: TextStyle(
                              color: Color(0xff1C1F2E),
                              fontSize: 18.0,
                              fontFamily: 'GB',
                            ),
                          ),
                          // Image(
                          //   image: AssetImage('assets/Images/mood.png'),
                          //   color: Color(0xff1C1F2E),
                          // ),
                          Text(
                            'Moodinger',
                            style: TextStyle(
                              color: Color(0xff1C1F2E),
                              fontSize: 18.0,
                              fontFamily: 'GB',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 44.0,
                        ),
                        child: SizedBox(
                          height: 45.0,
                          child: TextField(
                            focusNode: wicher0,
                            decoration: InputDecoration(
                              labelText: '  Email',
                              labelStyle: TextStyle(
                                fontFamily: 'GM',
                                fontSize: 18,
                                color: wicher0.hasFocus
                                    ? Color(0xffF35383)
                                    : Color(0xff1C1F2E),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff1C1F2E),
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
                            focusNode: wicher1,
                            decoration: InputDecoration(
                              labelText: '  Password ',
                              labelStyle: TextStyle(
                                fontFamily: 'GM',
                                fontSize: 18,
                                color: wicher1.hasFocus
                                    ? Color(0xffF35383)
                                    : Color(0xff1C1F2E),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff1C1F2E),
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
                        height: 30.0,
                      ),
                      SizedBox(
                        height: 45,
                        width: 130,
                        child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {},
                          child: Text('sign in'),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? /',
                            style: TextStyle(
                              fontFamily: 'GM',
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            ' Sign Up',
                            style: TextStyle(
                              fontFamily: 'GB',
                              color: Color(0xff1C1F2E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    wicher0.dispose();
    wicher1.dispose();
    super.dispose();
  }
}
