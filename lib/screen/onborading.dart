import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controller/controler.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({Key? key}) : super(key: key);
  final controller = OnboradingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              child: PageView.builder(
                  itemCount: controller.onBoradingPage.length,
                  itemBuilder: (context, index) {
                    var _data = controller.onBoradingPage[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${_data.ima}"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(controller.onBoradingPage[index].titel)
                      ],
                    );
                  }),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Row(
              children: [
                Obx(() {
                  return SmoothPageIndicator(
                    controller: controller.pageController,
                    count: controller.onBoradingPage.length,
                    axisDirection: Axis.vertical,
                    effect: SlideEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 24.0,
                        dotHeight: 16.0,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.indigo),
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
