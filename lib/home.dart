import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Data.dart';
import 'ProductDetail.dart';
import 'flash_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Data> list = [];

  Future<ProductDetail?> _getProductDetail() async {
    final url = Uri.parse('https://api.dawaishop.com/retail/website/getproductlist');
    final headers = {'Content-Type': 'application/json'};
    final payload = jsonEncode({
      'LicenseNumber': '88895947412',
      'Category' : '',
      'Search' : ''
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
        final result = ProductDetail.fromJson(jsonResponse);
        list = result.data;
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
    return FutureBuilder(
        future: _getProductDetail(),
        builder: (context, snapshot){
          if(snapshot.hasData)
          {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Material(
                    child: InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FlashScreen(id: list[index].id)));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          margin: const EdgeInsets.all(8.0),
                          height: 80,
                          color: Colors.grey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Name: ${list[index].name}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Company: ${list[index].company}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Category: ${list[index].categorie}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Package_size": ${list[index].packageSize}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                }
            );
          }
          else
          {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}