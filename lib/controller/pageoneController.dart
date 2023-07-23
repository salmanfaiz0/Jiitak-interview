import 'package:get/get.dart';
import 'package:demo/model/cardmodel.dart';

class PageoneController extends GetxController {
  RxList<bool> isFavoriteList = <bool>[].obs;

  void toggleFavorite(int index) {
    isFavoriteList[index] = !isFavoriteList[index];
  }

  List<CardModel> item = [
    CardModel(
      t1: "本日まで",
      t2: '介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）',
      t3: "介護付き有料老人ホーム",
      t4: "¥ 6,000",
      t5: "5月 31日（水）08 : 00 ~ 17 : 00",
      t6: "北海道札幌市東雲町3丁目916番地17号",
      t7: "交通費 300円",
      t8: "住宅型有料老人ホームひまわり倶楽部",
      image: "assets/image/image2.png",
    ),
    CardModel(
      t1: "本日まで",
      t2: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      t3: "介護付き有料老人ホーム",
      t4: "6,000円 ",
      t5: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
      t6: "北海道札幌市東雲町3丁目916番地17号",
      t7: "交通費 300円",
      t8: "住宅型有料老人ホームひまわり倶楽部",
      image: "assets/image/image19.png",
    ),
    CardModel(
      t1: "本日まで",
      t2: '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
      t3: "介護付き有料老人ホーム",
      t4: "6,000円 ",
      t5: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
      t6: "北海道札幌市東雲町3丁目916番地17号",
      t7: "交通費 300円",
      t8: "住宅型有料老人ホームひまわり倶楽部",
      image: "assets/image/image00.png",
    )
  ];

  @override
  void onInit() {
    super.onInit();

    isFavoriteList.value = List.generate(item.length, (_) => false);
  }
}
