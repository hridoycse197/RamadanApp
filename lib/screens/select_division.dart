import 'package:flutter/material.dart';
import 'package:ramadanapp/utils/color/colors.dart';

class SelectDivision extends StatelessWidget {
  SelectDivision({Key? key}) : super(key: key);
  final List _divisionList = [
    'ঢাকা বিভাগ',
    'সিলেট  বিভাগ',
    'চট্টগ্রাম বিভাগ',
    'ময়মনসিংহ বিভাগ',
    'রাজশাহী বিভাগ',
    'খুলনা বিভাগ',
    'রংপুর বিভাগ',
    'বরিশাল বিভাগ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('আপনার বিভাগ নির্বাচন করুন'),
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