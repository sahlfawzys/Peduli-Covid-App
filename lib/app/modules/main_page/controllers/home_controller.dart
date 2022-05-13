import 'package:get/get.dart';
import 'package:peduli_covid/app/data/models/covid_model_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  CovidModel covid = CovidModel();
  Future getData() async {
    try {
      final String url =
          'https://covid19-public.digitalservice.id/api/v1//rekapitulasi/jabar';
      final response = await http.get(Uri.parse(url));

      covid = CovidModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } catch (e) {
      print(e);
    }
  }
}
