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
            text: Datatext.roja_vongo_title,
            color: AppColor.appbarcolor,
            fontsize: 22),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Datatext.vongolist.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                  width: double.infinity,
                  child: Text(Datatext.vongolist[index]),
                ),
              );
            },
          ),
        ),
//makruh
        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.roja_makruh_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Datatext.makruhlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                  width: double.infinity,
                  child: Text(Datatext.makruhlist[index]),
                ),
              );
            },
          ),
        ),

        TextWidget(
            textAlign: TextAlign.center,
            text: Datatext.roja_makruh_title,
            color: AppColor.appbarcolor,
            fontsize: 22),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .04),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Datatext.makruhlist.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Container(
                  width: double.infinity,
                  child: Text(Datatext.makruhlist[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
