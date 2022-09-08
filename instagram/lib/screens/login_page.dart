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
      top: 40,
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
                    height: 30.0,
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
                                : Colors.grey,
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
                        focusNode: wicher1,
                        decoration: InputDecoration(
                          labelText: '  Password ',
                          labelStyle: TextStyle(
                            fontFamily: 'GM',
                            fontSize: 18,
                            color: wicher1.hasFocus
                                ? Color(0xffF35383)
                                : Colors.grey,
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
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        ' Sign Up',
                        style: TextStyle(
                          fontFamily: 'GM',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
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
