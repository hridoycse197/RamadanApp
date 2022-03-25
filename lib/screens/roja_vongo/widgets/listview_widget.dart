import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ramadanapp/utils/assets_link.dart';
import 'package:ramadanapp/widgets/page_alltextwidget.dart';
import 'package:ramadanapp/widgets/text_widget.dart';

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
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        //roja vongo heading

        TextWidget(
            text: Datatext.roja_vongo_title,
            color: AppColor.appbarcolor,
            fontsize: 22),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.roja_vongo_reason1,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason2,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason3,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason4,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason5,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason6,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason7,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason8,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason9,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason10,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_vongo_reason11,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),

        //makruh
        TextWidget(
            text: Datatext.roja_makruh_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason1,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason2,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason3,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason4,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason5,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason6,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason7,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason8,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason9,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason10,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason11,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason12,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_makruh_reason13,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),

        //roja kajah korar karon
        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.roja_kajah_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason1,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason2,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason3,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason4,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason5,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason6,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            text: Datatext.roja_kajah_reason7,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.roja_kajah_note,
            color: AppColor.text_note_color,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
