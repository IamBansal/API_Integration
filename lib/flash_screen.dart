import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ProductDataDetail.dart';

class FlashScreen extends StatefulWidget {
  String id;
  FlashScreen({super.key, required this.id});
  @override
  State<FlashScreen> createState() => _FlashScreenState(id);
}

class _FlashScreenState extends State<FlashScreen> {

  late ProductDataDetail result;

  late String idN;
  _FlashScreenState(String id)
  {
    idN = id;
  }

  Future<ProductDataDetail?> _getProductDataDetail() async {
    final url = Uri.parse('https://api.dawaishop.com/retail/website/getproductdetail');
    final headers = {'Content-Type': 'application/json'};
    final payload = jsonEncode({
      "LicenseNumber" : "88895947412",
      "id" : idN,
    });

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: payload,
      );

      // Handle the response
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        result = ProductDataDetail.fromJson(jsonResponse);
        return result;
      } else {
        // Handle the error
        throw Exception('Failed to fetch product detail');
      }
    } catch (error) {
      // Handle any errors
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
        ),
        body: Scaffold(
          body: FutureBuilder(
            future: _getProductDataDetail(),
            builder: (context, snapshot)
            {
              if(snapshot.hasData)
              {
                return Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(result.name),
                        Text(result.company),
                        Text(result.packageSize),
                        Text(result.categorie),
                        Text(result.file),
                        Text(result.dataTypePros),
                      ],
                    ),
                  ),
                );
              }
              else
              {
                return const Center(
                    child: CircularProgressIndicator()
                );
              }
            },
          ),
        )
    );
  }
}