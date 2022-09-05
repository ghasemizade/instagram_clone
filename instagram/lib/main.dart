import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'FALCON',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
