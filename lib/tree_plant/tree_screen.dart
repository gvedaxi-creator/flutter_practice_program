import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vedaxi/tree_plant/tree_controller.dart';

class TreeScreen extends StatefulWidget {
  TreeScreen({super.key});

  @override
  State<TreeScreen> createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  TreeController controller = Get.put(TreeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.treeCont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : controller.treeDataList.isEmpty
                ? Center(child: Text("No data found"))
                : ListView.builder(
                    itemCount: controller.treeDataList.length,
                    itemBuilder: (context, index) {
                      final data = controller.treeDataList[index];
                      return ListTile(
                        title: Text(data.name.toString()),
                        subtitle: Text(data.description.toString()),
                        leading: Image.network(data.image.toString()),
                      );
                    },
                  ),
      ),
    );
  }
}
