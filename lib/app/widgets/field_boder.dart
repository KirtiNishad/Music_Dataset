import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../configs/app_themes.dart';

class FieldBorder extends StatelessWidget {
  final Widget child;
  final String title;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final BoxConstraints? constraints;
  final bool? mandatory;

  const FieldBorder(
      {super.key,
      required this.child,
      required this.title,
      this.padding,
      this.height,
      this.constraints,
      this.mandatory});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(mandatory != null  ? " *" : "",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.red)),
          ],
        ),
        4.verticalSpace,
        Container(
          height: height ?? 56.h,
          constraints: constraints,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppThemes.white,
            border: Border.all(color: AppThemes.borderColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: padding ?? EdgeInsets.symmetric(horizontal: 10.w),
          child: child,
        ),
      ],
    );
  }
}
