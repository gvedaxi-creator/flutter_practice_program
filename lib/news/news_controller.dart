
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedaxi/api_services/api_services.dart';
import 'package:vedaxi/news/news_model.dart';

class NewsController extends GetxController {
  ApiServices api = ApiServices();

  RxList<Articles> newsData =<Articles>[].obs;
  RxBool isLoading =false.obs;

  Future<void> newsCont() async
  {
    isLoading.value = true;
    final respo=await api.news();


    if(respo.articles ==[] || respo.articles ==null){
      Get.snackbar("Error", "Please try again later", backgroundColor: Colors.red);
      isLoading.value = false;
    }else{

      newsData.value=respo.articles ?? [];
      isLoading.value = false;

      }
  }
}
