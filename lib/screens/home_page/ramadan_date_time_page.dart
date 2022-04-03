import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/controller/tasbih_controller.dart';
import 'package:ramadanapp/widgets/show_ramadan_time.dart';

class RamadanDateTime extends StatelessWidget {
  RamadanDateTime({
    Key? key,
  }) : super(key: key);

  TasbihController controller = Get.put(TasbihController());
  var arguments = Get.arguments;

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int increase = 0;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text( arguments[0].toString()),
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
              division: arguments[0],
              increase: arguments[1],
            ),
            Container(),
            Container(),
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
