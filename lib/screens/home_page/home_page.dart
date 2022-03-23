import 'package:flutter/material.dart';
import 'package:ramadanapp/widgets/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: width,
            height: height * 0.25,
            child: Image.asset(
              'assets/images/bg.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: HomeContant(),
            color: Colors.white,
            height: height - (height * 0.25),
          ),
          // Text('data')
        ],
      ),
    );
  }
}
