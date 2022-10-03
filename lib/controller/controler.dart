import 'package:flutter/cupertino.dart';
import '../model/onborading_model.dart';
import 'package:get/get.dart';

class OnboradingController extends GetxController {
  var pageController = PageController();
  var onPageIndex = 0.obs;
  List<OnboradingModel> onBoradingPage = [
    OnboradingModel(
        ima:
            'https://cdn.pixabay.com/photo/2020/03/17/12/01/vietnam-4940054_960_720.jpg',
        titel: 'Vietnamese Sexy Babe'),
    OnboradingModel(
        ima:
            'https://i.pinimg.com/564x/59/f2/a8/59f2a83d7b5e6bddcf112468d6495991.jpg',
        titel: 'Vietnamese Sexy Babe'),
    OnboradingModel(
        ima:
            'https://i.pinimg.com/originals/a1/cc/e2/a1cce205008b7de9afcddbdc7734b4a3.jpg',
        titel: 'Vietnamese Sexy Babe')
  ];
}
