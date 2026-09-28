import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedaxi/api_services/api_services.dart';
import 'package:vedaxi/tree_plant/tree_model.dart';

class TreeController extends GetxController {
  ApiServices api = ApiServices();
  // Made the treeData list observable (.obs). This creates a live stream of the data,
  // meaning any changes made to the list will immediately be reflected in the UI.
  // data ni ander koi pn change thay to ae direct ui ne dekhva joiye etle observable banyu che.
  RxList<TreePlant> treeData = <TreePlant>[].obs;

  //  A reactive boolean to manage loading states (true/false).
  // The UI will automatically show/hide the loading spinner whenever this value toggles.
  // loader mate no variable che, load thase to true and data aavi jase to false.
  RxBool isLoading = false.obs;

  Future<void> treeCont() async {
    isLoading.value = true;
    final respo = await api.tree(); // here tree is function name

    if (respo.responseCode.toString() == '1') {
      treeData.value =
          respo.treePlant ??
          []; // treePlant ni value null hoi sake etle default value set kari
      isLoading.value = false;
    } else {
      isLoading.value = false;
      Get.snackbar(
        "error",
        respo.message.toString(),
        backgroundColor: Colors.red,
      );
    }
  }
}
