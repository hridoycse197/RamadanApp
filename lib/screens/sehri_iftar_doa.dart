import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ramadanapp/screens/widgets/iftar_doa_widget.dart';
import 'package:ramadanapp/screens/widgets/list_view_widgets.dart';
import 'package:ramadanapp/screens/widgets/sehri_doa_widget.dart';
import 'package:ramadanapp/utils/color/colors.dart';
import 'package:ramadanapp/utils/data_text.dart';
import 'package:ramadanapp/widgets/appbar_widget.dart';
import 'package:ramadanapp/widgets/text_widget.dart';

class SehriIftarDoa extends StatelessWidget {
  const SehriIftarDoa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarWidget(title: 'সেহরি ও ইফতারের দোয়া'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.01,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.appbarcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
              ),
            ),
            //logo
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.19,
              width: double.infinity,
              color: AppColor.white,
            ),
            //divider
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
            //sehri doa
            ListViewWidgets(),
          ],
        ),
      ),
    );
  }
}
