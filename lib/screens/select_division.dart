// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ramadanapp/screens/home_page/ramadan_date_time_page.dart';
// import 'package:ramadanapp/utils/color/colors.dart';

// class SelectDivision extends StatelessWidget {
//   SelectDivision({Key? key}) : super(key: key);
//   final List _divisionList = [
//     'ঢাকা বিভাগ',
//     'সিলেট  বিভাগ',
//     'চট্টগ্রাম বিভাগ',
//     'ময়মনসিংহ বিভাগ',
//     'রাজশাহী বিভাগ',
//     'খুলনা বিভাগ',
//     'রংপুর বিভাগ',
//     'বরিশাল বিভাগ',
//   ];

<<<<<<< HEAD
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('আপনার বিভাগ নির্বাচন করুন'),
//         backgroundColor: AppColor.appbarcolor,
//       ),
//       body: ListView.builder(
//         itemCount: _divisionList.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Get.to(RamadanDateTime(divisionname: index));
//             },
//             child: Card(
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 50,
//                 child: Text(_divisionList[index]),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('আপনার বিভাগ নির্বাচন করুন'),
        backgroundColor: AppColor.appbarcolor,
      ),
      body: ListView.builder(
        itemCount: _divisionList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(_divisionList[index]),
            ),
          );
        },
      ),
    );
  }
}
>>>>>>> d3573934ff4038f4ae05361e9f212b1e455265fb
