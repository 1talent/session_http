
import 'dart:convert';

import 'package:hive/hive.dart';

part 'addonvo.g.dart';


List<AddOnVO> addOnVOFromJson(String str) =>
    List<AddOnVO>.from(json.decode(str).map((x) => AddOnVO.fromJson(x)));

String addOnVOToJson(List<AddOnVO> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 0,adapterName: "AddOnAdapter")
class AddOnVO {
  AddOnVO({
    this.info1,
    this.info2,
    this.info3,
    this.serviceIndex,
    this.planName,
    this.serviceName,
    this.serviceStatus,
  });

  @HiveField(0)
  String? info1;

  @HiveField(1)
  String? info2;

  @HiveField(2)
  String? info3;

  @HiveField(3)
  int? serviceIndex;

  @HiveField(4)
  String? serviceName;

  @HiveField(5)
  String? planName;

  @HiveField(6)
  String? serviceStatus;

  factory AddOnVO.fromJson(Map<String, dynamic> json) => AddOnVO(
        info1: json['info1'],
        info2: json['info2'],
        info3: json['info3'],
        serviceIndex: json['serviceIndex'],
        serviceName: json['serviceName'],
        planName: json['planName'],
        serviceStatus: json['serviceStatus'],
      );

  Map<String, dynamic> toJson() => {
        "info1": info1,
        "info2": info2,
        "info3": info3,
        "serviceIndex": serviceIndex,
        "serviceName": serviceName,
        "planName": planName,
        "serviceStatus": serviceStatus
      };
}
