import 'package:flutter/material.dart';

import 'package:ramadanapp/widgets/grid_design.dart';

class HomeContant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          GridDesign(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 1,
            ),
          ),
          GridDesign2()
        ],
      ),
    );
    ;
  }
}
