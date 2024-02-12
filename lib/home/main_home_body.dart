
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';
import 'package:marcos_haull_solutions/widgets/custom_icon.dart';
import 'package:marcos_haull_solutions/widgets/custom_text.dart';

class MainHomeBody extends StatefulWidget {
  const MainHomeBody({super.key});

  @override
  State<MainHomeBody> createState() => _MainHomeBodyState();
}

class _MainHomeBodyState extends State<MainHomeBody> {
  PageController homeBodyController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = APPDimensions.height220;

  
  @override
  void initState() {
    super.initState();
    homeBodyController.addListener(() {
      setState(() {
        _currentPageValue = homeBodyController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    homeBodyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: APPDimensions.height320,
        margin: EdgeInsets.only(top: APPDimensions.height20, bottom: APPDimensions.height5),
        child: PageView.builder(
            controller: homeBodyController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      DotsIndicator(
        dotsCount: 5,
        position: _currentPageValue,
        decorator: DotsDecorator(
          size: Size.square(APPDimensions.height10),
          activeSize: Size(APPDimensions.width20, APPDimensions.height10),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(APPDimensions.height5)),
        ),
      ),
    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          height: APPDimensions.height220,
          margin: EdgeInsets.only(left: APPDimensions.width10, right: APPDimensions.width10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(APPDimensions.height30),
              color: AppColors.secondaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/banner3.webp"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: APPDimensions.height100,
            margin: EdgeInsets.only(left: APPDimensions.width30, right: APPDimensions.width30, bottom: APPDimensions.height30),
            padding: EdgeInsets.all(APPDimensions.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(APPDimensions.height20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFe8e8e8),
                    blurRadius: APPDimensions.height5,
                    offset: Offset(0, APPDimensions.height5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-APPDimensions.width5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(APPDimensions.width5, 0),
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomIcon(
                      icon: Icons.pattern_rounded,
                      iconColor: Colors.yellowAccent,
                    ),
                    CustomText(
                      text: "Derbis Partie",
                      color: AppColors.blackTextColor,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
                const Spacer(),
                CustomText(
                  text:
                      "We where joking while haulling a huge pile of tree branches and solid garbage in Miami DownTown Lolitas Storage.",
                  textMaxLines: 2,
                  size: APPDimensions.height15,
                  color: AppColors.textColor,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
