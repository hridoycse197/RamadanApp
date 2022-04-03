import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import 'package:ramadanapp/utils/assets_link.dart';
import 'package:ramadanapp/utils/color/colors.dart';
import 'package:ramadanapp/utils/data_text.dart';

import 'package:ramadanapp/widgets/appbar_widget.dart';

import 'package:ramadanapp/widgets/text_widget.dart';

import '../../controller/tasbih_controller.dart';

class Tasbih extends StatelessWidget {
  Tasbih({Key? key}) : super(key: key);
  TasbihController controller = Get.put(TasbihController());
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          kToolbarHeight,
        ),
        child: AppbarWidget(
          title: Datatext.tarabih_salat_appbar_title,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset('assets/images/tasbih.json', height: height * .25),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [Text(controller.editingController.text)],
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColor.black,
                    blurRadius: width * 0.20,
                    offset: const Offset(0.1, 0.1),
                    spreadRadius: MediaQuery.of(context).size.width * 0.001,
                  )
                ]),
                child: CircleAvatar(
                  backgroundColor: AppColor.white,
                  radius: MediaQuery.of(context).size.width * .09,
                  child: Obx(
                    () => TextWidget(
                        text: controller.counter.string,
                        color: AppColor.appbarcolor,
                        fontsize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      Size(width * .2, height * 0.06)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.appbarcolor),
                ),
                onPressed: () {
                  controller.increment();
                },
                child: const Icon(Icons.add),
              ),
              Divider(
                height: height * 0.03,
                endIndent: width * 0.08,
                indent: width * .08,
                thickness: height * 0.004,
                color: AppColor.appbarcolor,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Container(
                  width: double.infinity,
                  height: height * 0.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.h),
                    ),
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(width - width * .10, height * 0.06)),
                          backgroundColor:
                              MaterialStateProperty.all(AppColor.appbarcolor),
                        ),
                        onPressed: () {
                          controller.reset();
                        },
                        child: TextWidget(
                            text: 'রিসেট করুন',
                            color: AppColor.white,
                            fontsize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
