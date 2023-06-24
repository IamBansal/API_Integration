import 'Data.dart';

class ProductDetail {
  ProductDetail({
    required this.apiResponse,
    required this.totalDataCount,
    required this.data,});

  ProductDetail.fromJson(dynamic json) {
    apiResponse = json['ApiResponse'];
    totalDataCount = json['TotalDataCount'];
    if (json['Data'] != null) {
      data = [];
      json['Data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  late String apiResponse;
  late int totalDataCount;
  late List<Data> data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ApiResponse'] = apiResponse;
    map['TotalDataCount'] = totalDataCount;
    if (data != null) {
      map['Data'] = data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
