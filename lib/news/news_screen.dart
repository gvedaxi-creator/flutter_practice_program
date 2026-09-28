import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedaxi/news/news_controller.dart';

class NewsScreen extends StatefulWidget {
   NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
 final NewsController controller= Get.put(NewsController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.newsCont();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          :controller.newsData.isEmpty
          ?Center(child: Text("No data found"))
          :ListView.builder(
        itemCount: controller.newsData.length,
        itemBuilder: (context, index){
          final data=controller.newsData[index];
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
