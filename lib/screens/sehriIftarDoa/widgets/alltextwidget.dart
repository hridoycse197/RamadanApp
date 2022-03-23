import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color/colors.dart';
import '../../../widgets/text_widget.dart';

class Heading extends StatelessWidget {
  String heading;
  String audiopath;
  Heading({required this.heading, required this.audiopath});
  void playaudio(String audiopath) {
    final player = AudioCache();
    player.play(audiopath, volume: 10000);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(text: heading, color: AppColor.appbarcolor, fontsize: 16.sp),
        IconButton(
          onPressed: () {
            playaudio(audiopath);
          },
          icon: Icon(Icons.volume_up),
        ),
      ],
    );
  }
}

class Arbi extends StatelessWidget {
  String niot;
  Arbi({Key? key, required this.width, required this.niot}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      child: TextWidget(
          textAlign: TextAlign.center,
          text: niot,
          color: AppColor.black,
          fontsize: 18.sp),
    );
  }
}

class Spelling extends StatelessWidget {
  String splelling;
  Spelling({
    Key? key,
    required this.height,
    required this.width,
    required this.splelling,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.02,
      ),
      child: TextWidget(
          fontWeight: FontWeight.w200,
          textAlign: TextAlign.center,
          text: splelling,
          color: AppColor.black,
          fontsize: 18),
    );
  }
}

class Meaning extends StatelessWidget {
  String meaning;
  Meaning({Key? key, required this.width, required this.meaning})
      : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      child: TextWidget(
          fontWeight: FontWeight.w200,
          textAlign: TextAlign.center,
          text: meaning,
          color: AppColor.black,
          fontsize: 18),
    );
  }
}
