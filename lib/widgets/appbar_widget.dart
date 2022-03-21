import 'package:flutter/material.dart';
import 'package:ramadanapp/widgets/text_widget.dart';

import '../utils/color/colors.dart';

class AppbarWidget extends StatelessWidget {
  String title;
  AppbarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColor.appbarcolor,
      title: TextWidget(text: title, color: AppColor.white, fontsize: 22),
    );
  }
}
