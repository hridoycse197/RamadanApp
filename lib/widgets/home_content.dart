import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/screens/sehri%20Iftar%20Doa/sehri_iftar.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Divider(
              thickness: 1,
              color: Colors.black,
              height: 1,
            ),
          ),
          //GridDesign()
        ],
      ),
    );
    ;
  }
}
