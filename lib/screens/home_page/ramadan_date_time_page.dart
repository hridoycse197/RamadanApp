import 'package:flutter/material.dart';
import 'package:ramadanapp/widgets/show_ramadan_time.dart';

class RamadanDateTime extends StatefulWidget {
  const RamadanDateTime({Key? key}) : super(key: key);

  @override
  State<RamadanDateTime> createState() => _RamadanDateTimeState();
}

class _RamadanDateTimeState extends State<RamadanDateTime> {
  String district = 'Dhaka';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            DropdownButton<String>(
              style: TextStyle(color: Colors.blue),
              hint: Row(
                children: <Widget>[
                  Text(
                    district,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              value: district,
              items: <String>[
                'Dhaka',
                'Rajshahi',
                'Sylhet',
                'Mymensingh',
                'Khulna',
                'Chittagong',
                'Barisal',
                'Rangpur'
              ].map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  district = value!;
                });
              },
            )
          ],
          title: Text(
            district,
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
            ShowRamadanTime(division: district),
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
