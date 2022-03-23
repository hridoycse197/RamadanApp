import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/model/item_model.dart';
import 'package:ramadanapp/screens/sehri%20Iftar%20Doa/sehri_iftar.dart';
import 'package:ramadanapp/widgets/views.dart';

class GridDesign extends StatelessWidget {
  final itemList = [
    ItemModel(
      image: 'assets/icons/calendar.png',
      title: 'রমজান সময়সূচী ২০২২',
    ),
    ItemModel(
      image: 'assets/icons/mosque.png',
      title: 'সেহেরি এবং ইফতারের দোয়া',
    ),
    ItemModel(
      image: 'assets/icons/kaaba.png',
      title: 'কিবলা কম্পাস',
    ),
    ItemModel(
      image: 'assets/icons/mosque-1.png',
      title: 'তারাবির সালাতের নিয়ম',
    ),
    ItemModel(
      image: 'assets/icons/calculator.png',
      title: 'যাকাত ক্যালকুলেটর',
    ),
    ItemModel(
      image: 'assets/icons/beads.png',
      title: 'তাসবিহ কাউন্টার',
    ),
    ItemModel(
      image: null,
      title: null,
    ),
    ItemModel(
      image: 'assets/icons/prohibition.png',
      title: 'রোজা ভঙ্গের কারন এবং মাকরুহ সমূহ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
      //physics: NeverScrollableScrollPhysics(),
      itemCount: itemList.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: width * 0.036,
        mainAxisSpacing: height * 0.03,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (context, index) {
        return index == 6
            ? Container()
            : InkWell(
                onTap: (() {
                  Get.to(SehriIftar(),
                      transition: Transition.circularReveal,
                      duration: Duration(seconds: 1));
                }),
                child: Views(
                  itemModel: ItemModel(
                      image: itemList[index].image,
                      title: itemList[index].title),
                ),
              );
      },
    );
  }
}
