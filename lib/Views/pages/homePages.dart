import 'package:flutter/material.dart';
import 'package:flutter_application/data/constant.dart';
import 'package:flutter_application/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class homePages extends StatefulWidget {
  const homePages({super.key});

  @override
  State<homePages> createState() => _homePagesState();
}

class _homePagesState extends State<homePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              HeroWidget(text: 'Home Page'),
              SizedBox(
                width: double.infinity,

                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'this is my test',
                            style: KTextStyle.titleTextStyle,
                          ),
                          Text('i try to learn flutter'),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Lottie.asset('assets/lotties/donut.json'),
                              Text(
                                'lotties',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
