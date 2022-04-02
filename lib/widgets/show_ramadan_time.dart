import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:ramadanapp/model/ramadan_date_model.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:tuple/tuple.dart';

class ShowRamadanTime extends StatelessWidget {
  String division;
  ShowRamadanTime({Key? key, required this.division}) : super(key: key);
  final monthanddate = DateFormat('MMMM-dd');
  final sehreiiftarformate = DateFormat('hh:mm');
  late int increase_iftartime = 0;
  late int increase_sehritime = 0;

  void addtime(String timezone) {
    timezone == division;
    if ( //all dhaka
        timezone == 'Dhaka') {
    } else if (timezone == 'Faridpur') {
      increase_sehritime = 2;
      increase_iftartime = 2;
    } else if (timezone == 'Gazipur') {
      increase_sehritime - 1;
    } else if (timezone == 'Gopalganj') {
      increase_sehritime = 4;
      increase_iftartime = 1;
    } else if (timezone == 'Kishoreganj') {
      increase_sehritime = -3;
      increase_iftartime = -1;
    } else if (timezone == 'Madaripur') {
    } else if (timezone == 'Manikganj') {
      increase_sehritime = 1;
      increase_iftartime = 2;
    } else if (timezone == 'Narayanganj') {
      increase_iftartime = -1;
    } else if (timezone == 'Narsingdi') {
      increase_sehritime = -2;
      increase_iftartime = -1;
    } else if (timezone == 'Rajbari') {
      increase_sehritime = 4;
      increase_iftartime = 4;
    } else if (timezone == 'Shariatpur') {
      increase_iftartime = -1;
      increase_sehritime = 2;
    } else if (timezone == 'Tangail') {
      increase_iftartime = 2;
    } else if (timezone == 'Munshiganj') {
      increase_iftartime = -1;
    }

//all khulna
    else if (timezone == 'Bagerhat') {
      increase_sehritime = 5;
      increase_iftartime = 1;
    } else if (timezone == 'Chuadanga') {
      increase_sehritime = 6;
      increase_iftartime = 6;
    } else if (timezone == 'Jessore') {
      increase_sehritime = 6;
      increase_iftartime = 4;
    } else if (timezone == 'Jhenaidah') {
      increase_sehritime = 5;
      increase_iftartime = 5;
    } else if (timezone == 'Khulna') {
      increase_sehritime = 6;
      increase_iftartime = 2;
    } else if (timezone == 'Kushtia') {
      increase_sehritime = 5;
      increase_iftartime = 5;
    } else if (timezone == 'Magura') {
      increase_sehritime = 4;
      increase_iftartime = 3;
    } else if (timezone == 'Meherpur') {
      increase_sehritime = 7;
      increase_iftartime = 7;
    } else if (timezone == 'Narail') {
      increase_sehritime = 5;
      increase_iftartime = 2;
    } else if (timezone == 'Satkhira') {
      increase_sehritime = 8;
      increase_iftartime = 4;
    }

//all mymensingh
    else if (timezone == 'Jamalpur') {
      increase_sehritime = -2;
      increase_iftartime = 4;
    } else if (timezone == 'Mymensingh') {
      increase_sehritime = -3;
      increase_iftartime = 1;
    } else if (timezone == 'Netrokona') {
      increase_sehritime = -5;
    } else if (timezone == 'Sherpur') {
      increase_sehritime = -2;
      increase_iftartime = 3;
    }

//all Sylhet
    else if (timezone == 'Habiganj') {
      increase_sehritime = -6;
      increase_iftartime = -3;
    } else if (timezone == 'Moulvibazar') {
      increase_sehritime = -8;
      increase_iftartime = -4;
    } else if (timezone == 'Sunamganj') {
      increase_sehritime = -7;
      increase_iftartime = -2;
    } else if (timezone == 'Sylhet') {
      increase_sehritime = -9;
      increase_iftartime = -4;
    }

//all Rajshahi
    else if (timezone == 'Bogra') {
      increase_sehritime = 1;
      increase_iftartime = 6;
    } else if (timezone == 'Joypurhat') {
      increase_sehritime = 2;
      increase_iftartime = 8;
    } else if (timezone == 'Naogaon') {
      increase_sehritime = 3;
      increase_iftartime = 8;
    } else if (timezone == 'Natore') {
      increase_sehritime = 4;
      increase_iftartime = 7;
    } else if (timezone == 'Chapai Nawabganj') {
      increase_sehritime = 6;
      increase_iftartime = 10;
    } else if (timezone == 'Pabna') {
      increase_sehritime = 4;
      increase_iftartime = 5;
    } else if (timezone == 'Rajshahi') {
      increase_sehritime = 5;
      increase_iftartime = 8;
    } else if (timezone == 'Sirajganj') {
      increase_sehritime = 1;
      increase_iftartime = 4;
    }

//all Rangpur
    else if (timezone == 'Dinajpur') {
      increase_sehritime = 2;
      increase_iftartime = 10;
    } else if (timezone == 'Gaibandha') {
      increase_sehritime = -1;
      increase_iftartime = 6;
    } else if (timezone == 'Kurigram') {
      increase_sehritime = -2;
      increase_iftartime = 7;
    } else if (timezone == 'Lalmonirhat') {
      increase_sehritime = -2;
      increase_iftartime = 7;
    } else if (timezone == 'Nilphamari') {
      increase_sehritime = 1;
      increase_iftartime = 10;
    } else if (timezone == 'Panchagarh') {
      increase_sehritime = 1;
      increase_iftartime = 12;
    } else if (timezone == 'Rangpur') {
      increase_sehritime = -1;
      increase_iftartime = 8;
    } else if (timezone == 'Thakurgaon') {
      increase_sehritime = 2;
      increase_iftartime = 12;
    }

//all Barishal
    else if (timezone == 'Barguna') {
      increase_iftartime = -2;
      increase_sehritime = 5;
    } else if (timezone == 'Barisal') {
      increase_iftartime = -2;
      increase_sehritime = 2;
    } else if (timezone == 'Bhola') {
      increase_iftartime = -3;
      increase_sehritime = 2;
    } else if (timezone == 'Jhalokati') {
      increase_iftartime = -1;
      increase_sehritime = 3;
    } else if (timezone == 'Patuakhali') {
      increase_iftartime = -2;
      increase_sehritime = 4;
    } else if (timezone == 'Pirojpur') {
      increase_sehritime = 5;
    }

//all ctg
    else if (timezone == 'Bandarban') {
      increase_sehritime = -4;
      increase_iftartime = -10;
    } else if (timezone == 'Brahmanbaria') {
      increase_sehritime = -4;
      increase_iftartime = -3;
    } else if (timezone == 'Chandpur') {
      increase_iftartime = -2;
    } else if (timezone == 'Chittagong') {
      increase_sehritime = -2;
      increase_iftartime = -8;
    } else if (timezone == 'Comilla') {
      increase_sehritime = -3;
      increase_iftartime = -4;
    } else if (timezone == 'Cox\'s Bazar') {
      increase_sehritime = -1;
      increase_iftartime = -10;
    } else if (timezone == 'Feni') {
      increase_sehritime = -3;
      increase_iftartime = -5;
    } else if (timezone == 'Khagrachhari') {
      increase_sehritime = -5;
      increase_iftartime = -8;
    } else if (timezone == 'Lakshmipur') {
      increase_sehritime = -1;
      increase_iftartime = -3;
    } else if (timezone == 'Noakhali') {
      increase_sehritime = -1;
      increase_iftartime = -4;
    } else if (timezone == 'Rangamati') {
      increase_sehritime = -4;
      increase_iftartime = -9;
    }
  }

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
                                            DateTime.utc(2022, 4, index + 3),
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
                                            minutes: increase_sehritime))) +
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
                                            minutes: increase_sehritime))) +
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
