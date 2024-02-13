import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/langs/langs.dart';
import 'package:marcos_haull_solutions/mockData/mock_data.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';
import 'package:marcos_haull_solutions/widgets/custom_icon.dart';
import 'package:marcos_haull_solutions/widgets/custom_icon_button.dart';
import 'package:marcos_haull_solutions/widgets/custom_icon_text_button.dart';
import 'package:marcos_haull_solutions/widgets/custom_text.dart';
import 'package:marcos_haull_solutions/widgets/expandable_text.dart';

class FutureEventsDetails extends StatelessWidget {
  const FutureEventsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Post Details Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: APPDimensions.height350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/banner3.webp"),
              )),
            ),
          ),
          //Action Icons
          Positioned(
              top: APPDimensions.height50,
              left: APPDimensions.height20,
              right: APPDimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtonIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: AppColors.blackTextColor,
                    buttonColor: AppColors.buttonsColor,
                    iconSize: APPDimensions.height45,
                  ),
                  CustomButtonIcon(
                    icon: Icons.arrow_forward_ios,
                    iconColor: AppColors.blackTextColor,
                    buttonColor: AppColors.buttonsColor,
                    iconSize: APPDimensions.height45,
                  )
                ],
              )),
          //Social Reaction
          Positioned(
              left: 0,
              right: 0,
              top: APPDimensions.height325,
              height: APPDimensions.height900,
              child: Container(
                padding: EdgeInsets.only(
                    left: APPDimensions.width20,
                    right: APPDimensions.width20,
                    top: APPDimensions.height20,
                    bottom: APPDimensions.height120),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(APPDimensions.height20),
                        topRight: Radius.circular(APPDimensions.height20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomIcon(
                          icon: Icons.party_mode,
                          iconSize: APPDimensions.height30,
                          iconColor: Colors.yellow,
                        ),
                        CustomText(
                          text: "Derbie Partie",
                          size: APPDimensions.height30,
                          color: AppColors.blackTextColor,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                    SizedBox(
                      height: APPDimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomIcon(
                              icon: Icons.thumb_up,
                              iconSize: APPDimensions.height25,
                              iconColor: AppColors.socialBlue,
                            ),
                            SizedBox(width: APPDimensions.height5),
                            CustomText(
                              text: "152",
                              size: APPDimensions.height15,
                              color: AppColors.blackTextColor,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(width: APPDimensions.height5),
                            CustomText(
                              text: AppLangs.langs['en']['postDetailsUI']
                                  ['likes'],
                              size: APPDimensions.height15,
                              color: AppColors.textColor,
                              weight: FontWeight.normal,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomIcon(
                              icon: Icons.comment,
                              iconSize: APPDimensions.height25,
                              iconColor: AppColors.socialLight,
                            ),
                            SizedBox(width: APPDimensions.height5),
                            CustomText(
                              text: "26",
                              size: APPDimensions.height15,
                              color: AppColors.blackTextColor,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(width: APPDimensions.height5),
                            CustomText(
                              text: AppLangs.langs['en']['postDetailsUI']
                                  ['comments'],
                              size: APPDimensions.height15,
                              color: AppColors.textColor,
                              weight: FontWeight.normal,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: APPDimensions.height30,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(padding: EdgeInsets.only(
                    left: APPDimensions.width10,
                    right: APPDimensions.width10,
                    top: APPDimensions.height20,
                    bottom: APPDimensions.height20),child: ExpandableText(text: MockData.mockData['post1'])),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: APPDimensions.height100,
        padding: EdgeInsets.all(APPDimensions.height30),
        decoration: BoxDecoration(
          color: AppColors.actionContainerColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(APPDimensions.height20),
              topRight: Radius.circular(APPDimensions.height20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButtonIconText(
              icon: Icons.thumb_up,
              iconColor: Colors.white,
              iconSize: APPDimensions.height50,
              buttonColor: AppColors.actionButtonsColor,
              buttomBorderRadius: APPDimensions.height10,
              buttomSize: APPDimensions.width160,
              buttomText: AppLangs.langs['en']['postDetailsUI']['likeit'],
            ),
            CustomButtonIconText(
              icon: Icons.comment_rounded,
              iconColor: Colors.white,
              iconSize: APPDimensions.height50,
              buttonColor: AppColors.actionButtonsColor,
              buttomBorderRadius: APPDimensions.height10,
              buttomSize: APPDimensions.width180,
              buttomText: AppLangs.langs['en']['postDetailsUI']['commentIt'],
            )
          ],
        ),
      ),
    );
  }
}
