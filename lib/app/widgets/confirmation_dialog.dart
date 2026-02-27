import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmationDialog extends StatelessWidget {
  final VoidCallback? onTapPositive;
  final VoidCallback? onTapNegative;
  final String positiveButtonText;
  final String negativeButtonText;
  final String title;

  const ConfirmationDialog({
    this.onTapPositive,
    this.onTapNegative,
    super.key,
    required this.positiveButtonText,
    required this.negativeButtonText,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      insetPadding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 24.h,
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h, bottom: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  Icons.error_outline_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: onTapNegative,
                  child: Text(
                    negativeButtonText,
                    style: TextStyle(color: Theme.of(context).disabledColor),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                TextButton(
                  onPressed: onTapPositive,
                  child: Text(
                    positiveButtonText,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
