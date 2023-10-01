import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_ui/theme/app_style.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.image,
    this.onTap,
  });

  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all($styles.insets.insets08),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: $styles.colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular($styles.insets.insets08),
          ),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
