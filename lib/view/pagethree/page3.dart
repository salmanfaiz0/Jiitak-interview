import 'package:demo/controller/pagethreeController.dart';
import 'package:demo/view/pagethree/widgets/imageWidget.dart';
import 'package:demo/view/pagethree/widgets/rowtextWidget.dart';
import 'package:demo/view/pagethree/widgets/textfieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/dropdownWidget.dart';

class PageThree extends StatelessWidget {
  final controller = Get.put(PageThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(22)),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black38,
            ),
          ),
        ),
        title: Text(
          "店舗プロフィール編集",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: Badge(
              backgroundColor: Colors.red,
              label: Text("99"),
              smallSize: 15,
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "店舗名",
                    subtitle: "Mer キッチン",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "代表担当者名",
                    subtitle: "林田　絵梨花",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "店舗電話番号",
                    subtitle: "123 - 4567 8910",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "店舗住所",
                    subtitle: "大分県豊後高田市払田791-13",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/image/image7.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  RowText(
                    tittle: "店舗外観",
                    subtittle: "（最大3枚まで）",
                  ),
                  Row(
                    children: [
                      ImageRowWidgets(Image.asset("assets/image/image8.png")),
                      ImageRowWidgets(Image.asset("assets/image/image8.png")),
                    ],
                  ),
                  RowText(
                    tittle: "店舗外観",
                    subtittle: "（1枚〜3枚ずつ追加してください）",
                  ),
                  Row(
                    children: [
                      ImageRowWidgets(Image.asset("assets/image/image9.png")),
                      ImageRowWidgets(Image.asset("assets/image/image9.png")),
                      ImageRowWidgets(Image.asset("assets/image/image9.png")),
                    ],
                  ),
                  RowText(
                    tittle: "料理写真",
                    subtittle: "（1枚〜3枚ずつ追加してください）",
                  ),
                  Row(
                    children: [
                      ImageRowWidgets(Image.asset("assets/image/image10.png")),
                      ImageRowWidgets(Image.asset("assets/image/image11.png")),
                      ImageRowWidgets(Image.asset("assets/image/image12.png")),
                    ],
                  ),
                  RowText(
                    tittle: "メニュー写真",
                    subtittle: "（1枚〜3枚ずつ追加してください）",
                  ),
                  Row(
                    children: [
                      ImageRowWidgets(Image.asset("assets/image/image13.png")),
                      ImageRowWidgets(Image.asset("assets/image/image14.png")),
                      ImageRowWidgets(Image.asset("assets/image/image15.png")),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("営業時間*"),
                      SizedBox(
                        height: 5,
                      ),
                      DropDownWidget(controller: controller),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("ランチ時間*"),
                  SizedBox(
                    height: 5,
                  ),
                  DropDownWidget(controller: controller),
                  SizedBox(
                    height: 15,
                  ),
                  Text("定休日*"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.times.map((time) {
                      bool isChecked = controller.selectedTimes.contains(time);
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                            child: Checkbox(
                              activeColor: Colors.orange[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              // fillColor: MaterialStatePropertyAll(Colors.red),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                controller.toggleSelectedTime(time);
                              },
                            ),
                          ),
                          Text(time),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.list.map((time) {
                      bool isChecked = controller.selectedTimes.contains(time);
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                            child: Checkbox(
                              activeColor: Colors.orange[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              // fillColor: MaterialStatePropertyAll(Colors.red),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                controller.toggleSelectedTime(time);
                              },
                            ),
                          ),
                          Text(time),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextfieldWidget(
                    title: "料理カテゴリー",
                    subtitle: "料理カテゴリー選択",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("予算"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: DropdownButton<String>(
                              isDense: true,
                              value: controller.selectedTime.toString(),
                              icon: Icon(Icons.arrow_drop_down),
                              // iconSize: 24,
                              elevation: 16,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                // setState(() {
                                //   selectedTime = newValue!;
                                // });
                              },
                              items: controller.timeOptions
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      Text("~"),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: DropdownButton<String>(
                              isDense: true,
                              value: controller.selectedTime.toString(),
                              icon: Icon(Icons.arrow_drop_down),
                              elevation: 16,
                              underline: Container(),
                              onChanged: (String? newValue) {
                                // setState(() {
                                //   selectedTime = newValue!;
                                // });
                              },
                              items: controller.timeOptions
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "料理カテゴリー",
                    subtitle: "料理カテゴリー選択",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "キャッチコピー",
                    subtitle: "美味しい！リーズナブルなオムライスランチ！",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextfieldWidget(
                    title: "座席数",
                    subtitle: "40席",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("喫煙席"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.list1.map((time) {
                      bool isChecked = controller.selectedTimes.contains(time);
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                            child: Checkbox(
                              activeColor: Colors.orange[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              // fillColor: MaterialStatePropertyAll(Colors.red),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                controller.toggleSelectedTime(time);
                              },
                            ),
                          ),
                          Text(time),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  Text("駐車場"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.list1.map((time) {
                      bool isChecked = controller.selectedTimes.contains(time);
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                            child: Checkbox(
                              activeColor: Colors.orange[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              // fillColor: MaterialStatePropertyAll(Colors.red),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                // setState(() {
                                //   if (newValue == true) {
                                //     selectedTimes.add(time);
                                //   } else {
                                //     selectedTimes.remove(time);
                                //   }
                                // });
                              },
                            ),
                          ),
                          Text(time),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  Text("来店プレゼント"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: controller.list1.map((time) {
                      bool isChecked = controller.selectedTimes.contains(time);
                      return Row(
                        children: [
                          SizedBox(
                            width: 22,
                            child: Checkbox(
                              activeColor: Colors.orange[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              // fillColor: MaterialStatePropertyAll(Colors.red),
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? newValue) {},
                            ),
                          ),
                          Text(time),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  Row(
                    children: [
                      ImageRowWidgets(Image.asset("assets/image/image16.png")),
                      ImageRowWidgets(Image.asset("assets/image/image17.png")),
                      ImageRowWidgets(Image.asset("assets/image/image18.png")),
                    ],
                  ),
                  TextfieldWidget(
                    title: "来店プレゼント名",
                    subtitle: "いちごクリームアイスクリーム, ジュース",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("編集を保存"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[200],
                          minimumSize:
                              Size(MediaQuery.sizeOf(context).width, 50)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
