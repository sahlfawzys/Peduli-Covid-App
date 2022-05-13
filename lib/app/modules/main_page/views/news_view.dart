import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/small_text.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.getNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _NewsViewWidget();
          }
          return FutureBuilder(
            builder: (context, snapshot) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }

  Widget _NewsViewWidget() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: 'BERITA HARI INI'),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) => _PageViewWidget(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _PageViewWidget(int index) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
            image: DecorationImage(
                image: NetworkImage(
                    controller.topNews.articles![index].urlToImage!),
                fit: BoxFit.fill),
          ),
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
            color: Colors.grey[300],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(
                text: controller.topNews.articles![index].source!.name!,
                size: 11,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                controller.topNews.articles![index].title!,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  // Widget _ListTileWidget(int index) {
  //   return ListTile(
  //     contentPadding: const EdgeInsets.all(10),
  //     title: SmallText(
  //       text: controller.topNews.articles![index].source!.name!,
  //       size: 11,
  //       color: Colors.grey,
  //     ),
  //     subtitle: SmallText(text: controller.topNews.articles![index].title!),
  //     leading: Container(
  //       height: 50,
  //       width: 100,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       child: Image.network(
  //         controller.topNews.articles![index].urlToImage!,
  //         fit: BoxFit.fill,
  //       ),
  //     ),
  //   );
  // }
}
