import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedaxi/news/news_contoller.dart';

class NewsScreen extends StatefulWidget {
   NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
 final NewsController contoller= Get.put(NewsController());

  @override
  void initstate()
  {
    super.initState();
    contoller.newsCont();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> contoller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          :contoller.newsData.isEmpty
          ?Center(child: Text("No data found"))
          :ListView.builder(
        itemCount: contoller.newsData.length,
        itemBuilder: (context, index){
          final data=contoller.newsData[index];
          return ListTile(
            title: Text(data.title.toString()),
            subtitle: Text(data.source?.name.toString() ?? ""),
            leading: Image.network(data.image.toString()),
          );
        },
      )
      ),
    );
  }
}
