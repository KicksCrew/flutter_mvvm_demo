import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../model/bus_stop_model.dart';

Future<BusStopModel?> getBusStopData() async {
  BusStopModel? result;
  try {
    final response = await http.get(
      Uri.parse("https://data.etabus.gov.hk/v1/transport/kmb/route/"),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },
    );
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = BusStopModel.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}