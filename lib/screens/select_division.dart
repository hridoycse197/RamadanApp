import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramadanapp/screens/home_page/ramadan_date_time_page.dart';
import 'package:ramadanapp/utils/color/colors.dart';

class SelectDivision extends StatelessWidget {
  SelectDivision({Key? key}) : super(key: key);

  final List _divisionList = [
    'ঢাকা বিভাগ',
    'সিলেট বিভাগ',
    'চট্টগ্রাম বিভাগ',
    'ময়মনসিংহ বিভাগ',
    'রাজশাহী বিভাগ',
    'খুলনা বিভাগ',
    'রংপুর বিভাগ',
    'বরিশাল বিভাগ',
  ];

// <<<<<<< HEAD
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('আপনার বিভাগ নির্বাচন করুন'),
// //         backgroundColor: AppColor.appbarcolor,
// //       ),
// //       body: ListView.builder(
// //         itemCount: _divisionList.length,
// //         itemBuilder: (context, index) {
// //           return GestureDetector(
// //             onTap: () {
// //               Get.to(RamadanDateTime(divisionname: index));
// //             },
// //             child: Card(
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 height: 50,
// //                 child: Text(_divisionList[index]),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
//
// =======
// >>>>>>> 7b7baad1d1097fe8ede146d20b33f136e36d1811
  @override
  Widget build(BuildContext context) {
    String district;
    int increase;
    return Scaffold(
      appBar: AppBar(
        title: Text('আপনার বিভাগ নির্বাচন করুন'),
        backgroundColor: AppColor.appbarcolor,
      ),
      body: ListView.builder(
        itemCount: _divisionList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (_divisionList[index] == 'ঢাকা বিভাগ') {
                district = 'ঢাকা বিভাগ';
                increase = 0;
              } else if (_divisionList[index] == 'সিলেট বিভাগ') {
                district = 'সিলেট বিভাগ';
                increase = -6;
              } else if (_divisionList[index] == 'চট্টগ্রাম বিভাগ') {
                district = 'চট্টগ্রাম বিভাগ';
                increase = -5;
              } else if (_divisionList[index] == 'রাজশাহী বিভাগ') {
                district = 'রাজশাহী বিভাগ';
                increase = 7;
              } else if (_divisionList[index] == 'ময়মনসিংহ বিভাগ') {
                district = 'ময়মনসিংহ বিভাগ';
                increase = 2;
              } else if (_divisionList[index] == 'খুলনা বিভাগ') {
                district = 'খুলনা বিভাগ';
                increase = 3;
              } else if (_divisionList[index] == 'রংপুর বিভাগ') {
                district = 'রংপুর বিভাগ';
                increase = 6;
              } else {
                district = 'বরিশাল বিভাগ';
                increase = 1;
              }

              Get.to(RamadanDateTime(division: district, incress: increase,),);
            },
            child: Card(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                child: Text(_divisionList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
// <<<<<<< HEAD
//
// =======
// >>>>>>> 7b7baad1d1097fe8ede146d20b33f136e36d1811
