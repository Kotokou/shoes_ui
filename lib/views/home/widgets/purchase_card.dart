import 'package:flutter/material.dart';
import 'package:shoes_ui/constants/strings.dart';
import 'package:shoes_ui/theme/app_style.dart';
import 'package:sizer/sizer.dart';

class PurchaseCard extends StatelessWidget {
  const PurchaseCard({
    super.key,
    required this.image,
    required this.percentage,
  });

  final String image;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 100.w,
      margin: EdgeInsets.symmetric(
        horizontal: $styles.numbers.num_22,
      ),
      decoration: BoxDecoration(
        color: $styles.colors.primary,
        borderRadius: BorderRadius.all(
          Radius.circular($styles.insets.insets18),
        ),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 20.h,
            width: 100.w,
          ),
          Positioned(
            top: -$styles.numbers.num_30,
            right: -$styles.numbers.num_14,
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: $styles.insets.insets18,
              bottom: $styles.insets.insets18,
              left: $styles.insets.insets26,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: percentage,
                    style: $styles.textStyles.titleBold,
                    children: [
                      TextSpan(
                        text: " ${Strings.discount}",
                        style: $styles.textStyles.labelBold,
                      ),
                    ],
                  ),
                ),
                Text(
                  Strings.onYourFirstPurchase,
                  style: $styles.textStyles.descRegular,
                ),
                SizedBox(height: 1.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: $styles.colors.black,
                  ),
                  onPressed: () {},
                  child: Text(
                    Strings.shopNow,
                    style: $styles.textStyles.smallTextBold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
