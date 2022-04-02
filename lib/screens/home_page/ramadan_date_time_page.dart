import 'package:flutter/material.dart';
import 'package:ramadanapp/utils/color/colors.dart';
import 'package:ramadanapp/widgets/show_magfirat_time.dart';
import 'package:ramadanapp/widgets/show_najat_time.dart';
import 'package:ramadanapp/widgets/show_ramadan_time.dart';

class RamadanDateTime extends StatefulWidget {
  const RamadanDateTime({Key? key}) : super(key: key);

  @override
  State<RamadanDateTime> createState() => _RamadanDateTimeState();
}

class _RamadanDateTimeState extends State<RamadanDateTime> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.appbarcolor,
          title: const Text(
            "Dhaka",
          ),
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
            ShowRamadanTime(),
            ShowMagfiratTime(),
            ShowNajatTime(),
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
