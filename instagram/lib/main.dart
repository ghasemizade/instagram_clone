import 'package:flutter/material.dart';
import 'package:instagram/screens/home_screen.dart';

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
      home: homePage(),
    );
  }
}

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Images/pattern1.png'),
              repeat: ImageRepeat.repeat),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Center(
                child: Image(
                  image: AssetImage('assets/Images/logo_splash.png'),
                ),
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
                      color: Colors.blue,
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
