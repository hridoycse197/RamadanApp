import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ramadanapp/utils/assets_link.dart';
import 'package:ramadanapp/widgets/page_alltextwidget.dart';

import '../../../utils/color/colors.dart';
import '../../../utils/data_text.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        //sehri heading
        Heading(
          heading: Datatext.niot_title,
          audiopath: AssetLink.sehri_doa,
        ),
        //sehri arbi
        Arbi(
          width: width,
          niot: Datatext.niot_arbi,
        ),
//sehri spelling
        Spelling(
          height: height,
          width: width,
          splelling: Datatext.niot_spelling,
        ),
        // sehri meaning
        Meaning(
          width: width,
          meaning: Datatext.niot_meaning,
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Divider(
          color: AppColor.black,
          height: 1.h,
          indent: height * 0.009,
          endIndent: height * 0.009,
        ),
//iftar heading
        Heading(
          heading: Datatext.iftar_title,
          audiopath: AssetLink.iftar_doa,
        ),
        //iftar spelling
        Spelling(
            height: height, width: width, splelling: Datatext.iftar_spelling),
        //iftar meaning
        Meaning(width: width, meaning: Datatext.iftar_meaning),
        SizedBox(
          height: height * 0.03,
        ),
        Divider(
          color: AppColor.black,
          height: 2.h,
          indent: height * 0.009,
          endIndent: height * 0.009,
        ),
      ],
    );
  }
}
