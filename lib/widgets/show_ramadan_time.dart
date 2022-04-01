import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ramadanapp/model/ramadan_date_model.dart';
import 'package:flutter/services.dart' as rootBundle;

class ShowRamadanTime extends StatelessWidget {
  ShowRamadanTime({Key? key}) : super(key: key);

  Future<List<RamadanDateModel>> readData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('assets/ramadan.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => RamadanDateModel.fromJson(e)).toList();
  }

  // List<RamadanDateModel> ramadanInfo = [
  //   RamadanDateModel(
  //     ramadanType: 'Rahmat',
  //     ramadanNumber: 1,
  //     date: DateTime.now(),
  //     sehriTime: DateTime.now(),
  //     iftarTime: DateTime.now(),
  //   ),
  //   RamadanDateModel(
  //     ramadanType: 'Rahmat',
  //     ramadanNumber: 1,
  //     date: DateTime.now(),
  //     sehriTime: DateTime.now(),
  //     iftarTime: DateTime.now(),
  //   ),
  //   RamadanDateModel(
  //     ramadanType: 'Rahmat',
  //     ramadanNumber: 1,
  //     date: DateTime.now(),
  //     sehriTime: DateTime.now(),
  //     iftarTime: DateTime.now(),
  //   ),
  // ];

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
            style: TextStyle(fontSize: 30),
          );
        } else if (snapshot.hasData) {
          var items = snapshot.data as List<RamadanDateModel>;
          return ListView.builder(
            itemCount: items.length - 20,
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
                              Image.asset(
                                items[index].calenderImage.toString(),
                                alignment: Alignment.center,
                                scale: 1.4,
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
                                    items[index].sehriTime.toString() +
                                    ' মিনিট',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'ইফতার এর সময় - সন্ধ্যা ' +
                                    items[index].iftarTime.toString() +
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
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

// ListView.builder(
//       itemCount: ramadanInfo.length,
//       itemBuilder: (context, index) {
//         return Container(
//           height: height * 0.2,
//           width: width,
//           //color: pages[index],
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   height: double.infinity,
//                   // color: Colors.blue,
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Image.asset(
//                         ramadanInfo[index].calenderImage,
//                         alignment: Alignment.center,
//                         scale: 1.4,
//                       ),
//                       Positioned(
//                           height: 25,
//                           child: Text(
//                             ramadanInfo[index].ramadanNumber.toString(),
//                             // ignore: prefer_const_constructors
//                             style: TextStyle(
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ))
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   // width: width,
//                   // height: height * 0.2,
//                   child: Text('shari shes homoy'
//                       //ramadanInfo[index].sehriTime.hour.toString(),
//                       ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );