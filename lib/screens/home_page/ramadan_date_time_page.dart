import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/controller/tasbih_controller.dart';
import 'package:ramadanapp/utils/color/colors.dart';
import 'package:ramadanapp/widgets/show_magfirat_time.dart';
import 'package:ramadanapp/widgets/show_najat_time.dart';
import 'package:ramadanapp/widgets/show_ramadan_time.dart';

class RamadanDateTime extends StatelessWidget {
  RamadanDateTime({required this.division, required this.incress});

  TasbihController controller = Get.put(TasbihController());
  var arguments = Get.arguments;
  String division;
  int incress;

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.appbarcolor,
          title: Text(division.toString()),
          centerTitle: true,
          bottom: const TabBar(
            padding: EdgeInsets.symmetric(horizontal: 5),
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  'রহমতের ১০ দিন',
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                child: Text(
                  'মাগফিরাতের ১০ দিন',
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                child: Text(
                  'নাজাতের ১০ দিন',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ShowRamadanTime(
              division: division,
              increase: incress,
            ),
            ShowMagfiratTime(division: division, increase: incress),
            ShowNajatTime(division: division, increase: incress),
          ],
        ),
      ),
    );
  }
}
