class RamadanDateModel {
  String? ramadanType;
  String? calenderImage;
  String? ramadanNumber;
  String? date;
  String? sehriTime;
  String? iftarTime;

  RamadanDateModel({
    this.ramadanType,
    this.ramadanNumber,
    this.date,
    this.sehriTime,
    this.iftarTime,
    this.calenderImage,
  });

  RamadanDateModel.fromJson(Map<String, dynamic> json) {
    ramadanNumber = json['ramadan'];
    date = json['date'];
    sehriTime = json['sahri'];
    iftarTime = json['iftar'];
    calenderImage = json['calenderImage'];
  }
}
