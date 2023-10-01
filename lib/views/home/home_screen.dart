import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shoes_ui/constants/assets.dart';
import 'package:shoes_ui/models/database.dart';
import 'package:shoes_ui/theme/app_style.dart';
import 'package:shoes_ui/views/home/widgets/custom_icon_button.dart';
import 'package:shoes_ui/views/home/widgets/purchase_card.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController pageController;
  double currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentIndex = (pageController.page)!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: $styles.numbers.num_26,
                left: $styles.numbers.num_22,
                right: $styles.numbers.num_22,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    image: Assets.menu,
                    onTap: () {},
                  ),
                  SizedBox(width: 6.w),
                  // SvgPicture.asset(Assets.nike),
                  Image.asset(Assets.nikeImg),
                  const Spacer(),
                  CustomIconButton(
                    image: Assets.bag,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            SizedBox(
              height: 20.h,
              child: PageView.builder(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: purchaseList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PurchaseCard(
                    image: purchaseList[index].image,
                    percentage: purchaseList[index].percentage,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: $styles.insets.insets08),
              child: DotsIndicator(
                dotsCount: purchaseList.length,
                position: currentIndex.floor(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
