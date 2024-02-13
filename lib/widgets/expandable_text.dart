import 'package:flutter/material.dart';
import 'package:marcos_haull_solutions/langs/langs.dart';
import 'package:marcos_haull_solutions/utils/colors.dart';
import 'package:marcos_haull_solutions/utils/dimensions.dart';
import 'package:marcos_haull_solutions/widgets/custom_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalfText;
  late String secondHalfText;

  bool hiddenText = true;
  double textHeight = APPDimensions.height200;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalfText = widget.text.substring(0, textHeight.toInt());
      secondHalfText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalfText = widget.text;
      firstHalfText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalfText.isEmpty
          ? CustomText(
              text: firstHalfText,
              weight: FontWeight.normal,
              color: AppColors.textColor,
              size: APPDimensions.height15,
              textMaxLines: 1000,
            )
          : Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  text: hiddenText
                      ? ("$firstHalfText...")
                      : (firstHalfText + secondHalfText),
                  weight: FontWeight.normal,
                  color: AppColors.textColor,
                  size: APPDimensions.height15,
                  textMaxLines: 1000,
                ),
                SizedBox(height: APPDimensions.width10,),
                InkWell(
                  onTap: () => {setState(() => hiddenText = !hiddenText)},
                  child: Row(
                    children: [
                      CustomText(
                        text: hiddenText
                            ? AppLangs.langs['en']['postDetailsUI']['showMore']
                            : AppLangs.langs['en']['postDetailsUI']['showLess'],
                        weight: FontWeight.bold,
                        color: AppColors.secondaryColor,
                        size: APPDimensions.height15,
                        textMaxLines: 1000,
                      ),
                      Icon(hiddenText
                          ? Icons.arrow_drop_down
                          : Icons.arrow_drop_up)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
