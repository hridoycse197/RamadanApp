import 'package:flutter/material.dart';
import 'package:ramadanapp/screens/widgets/sehri_doa_widget.dart';

import '../../utils/color/colors.dart';

class ListViewWidgets extends StatelessWidget {
  const ListViewWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            color: AppColor.white,
            child: SehriDoa(),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            color: AppColor.white,
            child: SehriDoa(),
          ),
        ],
      ),
    );
  }
}
