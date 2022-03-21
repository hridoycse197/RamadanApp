import 'package:flutter/material.dart';

import '../../utils/color/colors.dart';
import '../../utils/data_text.dart';
import '../../widgets/text_widget.dart';

class SehriDoa extends StatelessWidget {
  const SehriDoa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .05),
          child: Row(
            children: [
              TextWidget(
                  text: Datatext.niot_title,
                  color: AppColor.appbarcolor,
                  fontsize: 18),
              IconButton(
                color: AppColor.black,
                hoverColor: AppColor.black,
                onPressed: () {},
                icon: Icon(Icons.volume_up),
              ),
            ],
          ),
        ),
        //arbi doa
        Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.03,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: TextWidget(
              textAlign: TextAlign.center,
              text: Datatext.niot_arbi,
              color: AppColor.black,
              fontsize: 20),
        ),
        //spelling
        Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.03,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: TextWidget(
              textAlign: TextAlign.center,
              text: Datatext.niot_spelling,
              color: AppColor.black,
              fontsize: 20),
        ),
        //meaning
        Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.width * 0.031,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: TextWidget(
              textAlign: TextAlign.center,
              text: Datatext.niot_meaning,
              color: AppColor.black,
              fontsize: 20),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              // vertical: MediaQuery.of(context).size.width * 0.02,
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: Container(
            height: 0.7,
            width: double.infinity,
            color: AppColor.black,
          ),
        ),
      ],
    );
  }
}
