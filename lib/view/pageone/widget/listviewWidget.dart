import 'package:demo/controller/pageoneController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:demo/model/cardmodel.dart';

class ListviewWidget extends StatelessWidget {
  final PageoneController controller = Get.put(PageoneController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.item.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      child: Image.asset(
                        controller.item[index].image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                          child: Text(controller.item[index].t1)),
                    ))
                  ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.item[index].t2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                controller.item[index].t3,
                                style: TextStyle(color: Colors.amber),
                              ),
                            )),
                        Spacer(),
                        Text(
                          controller.item[index].t4,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(controller.item[index].t5),
                    SizedBox(
                      height: 5,
                    ),
                    Text(controller.item[index].t6),
                    SizedBox(
                      height: 5,
                    ),
                    Text(controller.item[index].t7),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(controller.item[index].t8,
                            style: TextStyle(color: Colors.grey[400])),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            controller.toggleFavorite(index);
                          },
                          icon: Obx(() => Icon(
                                controller.isFavoriteList[index]
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: controller.isFavoriteList[index]
                                    ? Colors.red
                                    : Colors.grey[400],
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
