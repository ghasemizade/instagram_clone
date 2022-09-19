import 'package:flutter/material.dart';
import 'package:instagram/screens/Explore.dart';
import 'package:instagram/screens/MyHomeAccount.dart';
import 'package:instagram/screens/galary.dart';

import 'package:instagram/screens/login_page.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'GM',
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            textStyle: TextStyle(fontFamily: 'GB', fontSize: 16),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomeAccount(),
    );
  }
}

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    navigateToLoginScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        decoration: BoxDecoration(
          // color: Color(0xff1C1F2E),
          color: Colors.white,
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            image: AssetImage('assets/Images/pattern1.png'),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/Images/loader1.gif'),
                ),
              ),
            ),
            Positioned(
              bottom: 220.0,
              child: Image(
                image: AssetImage('assets/Images/moodinger_logo.png'),
                width: 150,
                color: Color(0xff1C1F2E),
              ),
            ),
            Positioned(
              bottom: 30,
              child: Column(
                children: [
                  Text(
                    'from',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'FALCON',
                    style: TextStyle(
                      color: Color(0xff1C1F2E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future navigateToLoginScreen(context) async {
  await Future.delayed(
    Duration(milliseconds: 3500),
  );
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) {
      return loginPage();
    }),
  );
}
