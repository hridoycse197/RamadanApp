import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ramadanapp/widgets/text_widget.dart';

import '../utils/color/colors.dart';

class AppbarWidget extends StatelessWidget {
  String title;
  AppbarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColor.appbarcolor,
      title: TextWidget(text: title, color: AppColor.white, fontsize: 22),
    );
  }
}

class AppbarBottom extends StatelessWidget {
  const AppbarBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.02,
      decoration: BoxDecoration(
        color: AppColor.appbarcolor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.r),
          bottomRight: Radius.circular(15.r),
        ),
      ),
    );
  }
}
