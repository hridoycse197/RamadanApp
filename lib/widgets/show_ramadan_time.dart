import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:ramadanapp/model/ramadan_date_model.dart';
import 'package:flutter/services.dart' as rootBundle;

class ShowRamadanTime extends StatefulWidget {
  String division;
  int increase;
  ShowRamadanTime({Key? key, required this.division, required this.increase})
      : super(key: key);

  @override
  State<ShowRamadanTime> createState() => _ShowRamadanTimeState();
}

class _ShowRamadanTimeState extends State<ShowRamadanTime> {
  final monthanddate = DateFormat('MMMM-dd');

  final sehreiiftarformate = DateFormat('hh:mm');

//   void addtime(String timezone) {
  Future<List<RamadanDateModel>> readData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/rohomot.json');
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
                  width: width * 0.02,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          //height: double.infinity,
                          // color: Colors.blue,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                items[index].calenderImage.toString(),
                                alignment: Alignment.center,
                                scale: 1.4,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    items[index].ramadanNumber.toString(),
                                    textAlign: TextAlign.center,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    monthanddate
                                        .format(
                                          DateTime.utc(2022, 4, index + 3),
                                        )
                                        .toString(),
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
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
