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
  void playaudio(String audiopath) {
    final player = AudioCache();
    player.play(audiopath, volume: 10000);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        //tarabih heading

        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_description_title,
            color: AppColor.appbarcolor,
            fontsize: 22),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_description,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
//tarabih niom
        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_niom_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_niom_description,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),

        //tarabih doa start
        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_doa_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_doa_description1,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
//doa speak
        IconButton(
          onPressed: () {
            playaudio(AssetLink.tarabih_namaj_audio);
          },
          icon: Icon(Icons.volume_up_outlined),
        ),
//doa arbi
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_doa_arbi,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        //doa spelling
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_doa_spelling,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
//doa description2
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_doa_description2,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),

//monajat start
        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_monajat_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_monajat_description,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
//doa speak
        IconButton(
          onPressed: () {
            playaudio(AssetLink.tarabih_monajat_audio);
          },
          icon: Icon(Icons.volume_up_outlined),
        ),
//doa arbi
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_monajat_arbi,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        //doa spelling
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.tarabih_monajat_spelling,
            color: AppColor.black,
            fontsize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        //doa end
      ],
    );
  }
}
