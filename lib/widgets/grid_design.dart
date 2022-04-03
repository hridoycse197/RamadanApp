import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/model/item_model.dart';

import 'package:ramadanapp/screens/roja_vongo/roja_vongo.dart';
import 'package:ramadanapp/screens/select_division.dart';
import 'package:ramadanapp/screens/tarabihsalat/tarabih_salat.dart';
import 'package:ramadanapp/screens/tasbih/tasbih.dart';

import 'package:ramadanapp/widgets/views.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/sehriIftarDoa/sehri_iftar.dart';

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
  final pagelist = [
    RamadanDateTime(),
    SehriIftar(),
    SehriIftar(),
    TarabihSalat(),
    Tasbih(),
    Tasbih(),
    null,
    RojaVongo(),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
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
                  Get.to(
                    pagelist[index],
                    transition: Transition.circularReveal,
                    duration: const Duration(seconds: 1),
                  );
                }),
                child: Views(
                  itemModel: ItemModel(
                    image: itemList[index].image,
                    title: itemList[index].title,
                  ),
                ),
              );
      },
    );
  }
}

class GridDesign2 extends StatelessWidget {
  final String url = 'https://play.google.com/store/apps';

  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Cannot launch $url';
    }
  }

  final itemList = [
    ItemModel(
      image: 'assets/icons/appIcon.png',
      title: 'আরও অ্যাপস',
    ),
    ItemModel(
      image: 'assets/icons/star.png',
      title: '৫ স্টার রেট করুন',
    ),
    ItemModel(
      image: 'assets/icons/shield.png',
      title: 'শর্ত ও গোপনীয়তা',
    ),
  ];
  final pagelist = [
    SelectDivision(),
    SehriIftar(),
    SehriIftar(),
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
        return InkWell(
          onTap: (() {
            index == 0 ? launchUrl(url) : null;
            index == 1
                ? Get.snackbar(
                    'test',
                    'message',
                    snackPosition: SnackPosition.BOTTOM,
                  )
                : null;
            index == 2
                ? Get.snackbar(
                    'also test',
                    'message',
                    snackPosition: SnackPosition.BOTTOM,
                  )
                : null;
          }),
          child: Views(
            itemModel: ItemModel(
              image: itemList[index].image,
              title: itemList[index].title,
            ),
          ),
        );
      },
    );
  }
}
