
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:settings_ui/models/call_model.dart';

class CallController extends ChangeNotifier {
  Dio dio = Dio();
  String baseUrl = "https://crm-backend-wqu3.onrender.com";
  Future<List<CallModel>> getallcalls() async {
    try {
      final response = await dio.get(
        "$baseUrl/getCalls",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
        final List<dynamic> calldata = response.data;
        return calldata.map((e) => CallModel.fromJson(e)).toList();
      } else {
        // log("${response.statusCode}");
        return [];
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
