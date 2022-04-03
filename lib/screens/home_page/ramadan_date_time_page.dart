import 'package:flutter/material.dart';
import 'package:ramadanapp/widgets/show_ramadan_time.dart';

class RamadanDateTime extends StatefulWidget {
  RamadanDateTime({
    Key? key,
  }) : super(key: key);

  @override
  State<RamadanDateTime> createState() => _RamadanDateTimeState();
}

class _RamadanDateTimeState extends State<RamadanDateTime> {
  String district = "";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int increase = 0;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            DropdownButton<String>(
              items: <String>[
                'ঢাকা বিভাগ',
                'সিলেট  বিভাগ',
                'চট্টগ্রাম বিভাগ',
                'ময়মনসিংহ বিভাগ',
                'রাজশাহী বিভাগ',
                'খুলনা বিভাগ',
                'রংপুর বিভাগ',
                'বরিশাল বিভাগ'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  this.district = newvalue.toString();
                  if (newvalue == 'ঢাকা বিভাগ') {
                    district = 'ঢাকা বিভাগ';
                    increase = 0;
                  } else if (newvalue == 'সিলেট বিভাগ') {
                    district = 'সিলেট বিভাগ';
                    increase = -6;
                  }
                  // else if (value == 'চট্টগ্রাম বিভাগ') {
                  //   district = 'চট্টগ্রাম বিভাগ';
                  //   increase = -5;
                  // } else if (value == 'রাজশাহী বিভাগ') {
                  //   district = 'রাজশাহী বিভাগ';
                  //   increase = 7;
                  // } else if (value == 'ময়মনসিংহ বিভাগ') {
                  //   district = 'ময়মনসিংহ বিভাগ';
                  //   increase = 2;
                  // } else if (value == 'খুলনা বিভাগ') {
                  //   district = 'খুলনা বিভাগ';
                  //   increase = 3;
                  // } else if (value == 'রংপুর বিভাগ') {
                  //   district = 'রংপুর বিভাগ';
                  //   increase = 6;
                  // } else {
                  //   district = 'বরিশাল বিভাগ';
                  //   increase = 1;
                  // }
                });
              },
            )
          ],
          title: Text(
            district.toString(),
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
            ShowRamadanTime(
              division: district,
              increase: increase,
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
