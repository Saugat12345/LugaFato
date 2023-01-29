

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_login/main.dart';
// import 'package:dio_http_cache/dio_http_cache.dart';

import 'package:new_login/response/product_response.dart';
import 'package:new_login/utils/urls.dart';
import 'package:path_provider/path_provider.dart';
import 'http_services.dart';



class ProductAPI{
  Future<ProductResponse?> getProductsByFilter(String? keyword) async {
    ProductResponse? productResponse;
    Response? response;
    Box box;

    var dir = await getApplicationDocumentsDirectory();

    Hive.init(dir.path);

    box = await Hive.openBox('test');
    try {
      var dio = HttpServices().getDioInstance();
      var url = baseUrl + productUrl;
      response = await dio.get(
        url,
        queryParameters: {'keyword':keyword},
      );
     
      if (response.statusCode == 200) {
        String postdata = jsonEncode(response.data);

        await box.clear();

        box.put("qsn", postdata);
        
        productResponse = ProductResponse.fromJson(response.data);
        Hive.box(API_BOX).put("posts", response.data);
      }
    } catch (e) {
      print(e.toString());
      var stored = box.get("qsn");

      var encoded = jsonDecode(stored);

      productResponse = ProductResponse.fromJson(encoded);
    }
     return productResponse;
  }
}