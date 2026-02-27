import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppBackButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ??
          () {
            GoRouter.of(context).pop();
          },
      icon: SizedBox(
        height: 38.w,
        width: 38.w,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.arrow_back,
              size: 24.w,
            ),
          ),
        ),
      ),
    );
  }
}
