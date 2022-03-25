import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/assets_link.dart';
import '../../../utils/color/colors.dart';
import '../../../widgets/appbar_widget.dart';

class PageHeadingWidget extends StatelessWidget {
  String imagelink;
  double containerheight;
  PageHeadingWidget(
      {Key? key, required this.containerheight, required this.imagelink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: containerheight,
      child: Column(
        children: [
          AppbarBottom(),
          LottieBuilder.asset(
            imagelink,
            animate: true,
            height: height * 0.19,
            width: width * 1,
          ),
          SizedBox(
            height: height * .01,
          ),
          Divider(
            color: AppColor.black,
            height: 1.h,
            indent: height * 0.009,
            endIndent: height * 0.009,
          ),
        ],
      ),
    );
  }
}
