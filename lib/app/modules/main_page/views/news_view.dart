import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/small_text.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: 'KESEHATAN'),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.85),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _PageViewWidget(index),
              ),
            ),
            const SizedBox(height: 20),
            BigText(text: 'BERITA HARI INI'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) => _ListTileWidget(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _PageViewWidget(int index) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/news_sehat.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(
            text: 'health.detik.com - $index',
            size: 11,
            color: Colors.grey.shade700,
          ),
          BigText(
            text: '7 buah untuk covid, konsumsi',
            size: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            overFlow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _ListTileWidget(int index) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      title: SmallText(
        text: 'cnbcindonesia - $index',
        size: 11,
        color: Colors.grey,
      ),
      subtitle:
          SmallText(text: 'Menurun, kasus covid di RI sebanyak 3.049 hari ini'),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          'assets/images/news.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
