import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:peduli_covid/app/data/models/top_news_model.dart';
import 'package:peduli_covid/utils/api.dart';

class NewsController extends GetxController {
  TopNews topNews = TopNews();

  Future<void> getNews() async {
    try {
      final String url = 'https://newsapi.org/v2/top-headlines';
      var response = await Dio().get(
        url,
        queryParameters: {
          'country': 'id',
          'apiKey': APIKEYS.news,
        },
      );
      if (response.statusCode == 200) {
        topNews = TopNews.fromJson(response.data as Map<String, dynamic>);
      } else {
        throw Exception(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
