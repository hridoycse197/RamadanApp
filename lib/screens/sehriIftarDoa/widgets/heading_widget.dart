import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/assets_link.dart';
import '../../../utils/color/colors.dart';
import '../../../widgets/appbar_widget.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppbarBottom(),
        Container(
          padding: EdgeInsets.all(
            height * 0.02,
          ),
          height: height * 0.15,
          child: Image.asset(
            AssetLink.sehri_iftar_image,
          ),
        ),
        Divider(
          color: AppColor.black,
          height: 1.h,
          indent: height * 0.009,
          endIndent: height * 0.009,
        ),
      ],
    );
  }
}
