import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ramadanapp/screens/sehriIftarDoa/widgets/listview_widget.dart';

import 'package:ramadanapp/utils/assets_link.dart';
import 'package:ramadanapp/utils/color/colors.dart';
import 'package:ramadanapp/utils/data_text.dart';
import 'package:ramadanapp/widgets/appbar_widget.dart';
import 'package:ramadanapp/widgets/page_heading_widget.dart';
import 'package:ramadanapp/widgets/text_widget.dart';

class SehriIftar extends StatelessWidget {
  const SehriIftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;
    ;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppbarWidget(title: Datatext.iftar_sehri_appbar_title)),
      body: SafeArea(
          child: Column(
        children: [
          PageHeadingWidget(
            containerheight: height * 0.24,
            imagelink: AssetLink.sehri_iftar_image,
          ),
          Container(
            padding: EdgeInsets.only(
              left: width * 0.02,
            ),
            height: height - height * 0.38,
            child: ListviewWidget(width: width, height: height),
          )
        ],
      )),
    );
  }
}
