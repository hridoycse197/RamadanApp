import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:ramadanapp/model/ramadan_date_model.dart';
import 'package:flutter/services.dart' as rootBundle;

class ShowMagfiratTime extends StatefulWidget {
  String division;
  int increase;
  ShowMagfiratTime({Key? key, required this.division, required this.increase})
      : super(key: key);

  @override
  State<ShowMagfiratTime> createState() => _ShowMagfiratTime();
}

class _ShowMagfiratTime extends State<ShowMagfiratTime> {
  final monthanddate = DateFormat('MMMM-dd');

  final sehreiiftarformate = DateFormat('hh:mm');

//   void addtime(String timezone) {
  Future<List<RamadanDateModel>> readData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/magfirat.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => RamadanDateModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: readData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(fontSize: 30),
          );
        } else if (snapshot.hasData) {
          var items = snapshot.data as List<RamadanDateModel>;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: Container(
                  height: height * 0.2,
                  //width: width * 0.02,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          // color: Colors.blue,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    items[index].calenderImage.toString(),
                                    alignment: Alignment.center,
                                    scale: 1.4,
                                  ),
                                  Positioned(
                                    top: height * 0.08,
                                    left: width * 0.046,
                                    child: Text(
                                      monthanddate
                                          .format(
                                            DateTime.utc(2022, 4, index + 13),
                                          )
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                  height: 25,
                                  child: Text(
                                    items[index].ramadanNumber.toString(),
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          // width: width,
                          // height: height * 0.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'সাহরীর শেষ সময় - ভোর ' +
                                    sehreiiftarformate.format(DateTime.parse(
                                            '2022-04-03 ' +
                                                items[index]
                                                    .sehriTime
                                                    .toString() +
                                                ':00')
                                        .add(Duration(
                                            minutes: widget.increase))) +
                                    ' মিনিট',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'ইফতার এর সময় - সন্ধ্যা ' +
                                    sehreiiftarformate.format(DateTime.parse(
                                            '2022-04-03 ' +
                                                items[index]
                                                    .iftarTime
                                                    .toString() +
                                                ':00')
                                        .add(Duration(
                                            minutes: widget.increase))) +
                                    ' মিনিট',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
