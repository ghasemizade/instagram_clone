import 'dart:ui';

import 'package:flutter/material.dart';

class switchAccountScreen extends StatelessWidget {
  const switchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1C1F2E),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/Images/switch_account_background.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          height: 350,
                          width: 320,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(0, 0, 0, .4),
                                Color.fromRGBO(0, 0, 0, .3),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              Image(
                                image: AssetImage(
                                  'assets/Images/user_1.png',
                                ),
                                width: 150,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Sarah',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 45,
                                width: 130,
                                child: ElevatedButton(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  onPressed: () {},
                                  child: Text('Confirm'),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Text(
                                'switch Account',
                                style: Theme.of(context).textTheme.headline4,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account? / ',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15.0,
                      fontFamily: 'GR',
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xff1C1F2E),
                      fontFamily: 'GB',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
