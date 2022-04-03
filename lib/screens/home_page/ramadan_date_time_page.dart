import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/controller/tasbih_controller.dart';
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
          title: Text( division.toString()),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'রহমতের ১০\nদিন',
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                child: Text(
                  'মাগফিরাতের ১০\nদিন',
                  textAlign: TextAlign.center,
                ),
              ),
              Tab(
                child: Text(
                  'নাজাতের ১০\nদিন',
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
            ShowRamadanTime(division: division, increase: incress),
            ShowNajatTime(division: division, increase: incress),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return Card();
//           },
//         )
