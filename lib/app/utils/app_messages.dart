
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../configs/app_constants.dart';
import '../configs/app_themes.dart';

class AppMessages {
  static void showSuccessMessage(BuildContext context, String message) {
    context.showFlash(
      builder: (context, controller) {
        return FlashBar(
          backgroundColor: AppThemes.greenColor,
          controller: controller,
          content: Text(
            message,
            style: const TextStyle(color: AppThemes.white),
          ),
        );
      },
      duration: AppConsts.snackBarTimeout,
    );
  }

  static void showErrorMessage(BuildContext context, String message) {
    context.showFlash(
      builder: (context, controller) {
        return FlashBar(
          backgroundColor: AppThemes.redColor,
          controller: controller,
          content: Text(
            message,
            style: const TextStyle(color: AppThemes.white),
          ),
        );
      },
      duration: AppConsts.snackBarTimeout,
    );
  }

  static Future<void> showDialogMessage({
    required BuildContext context,
    required String buttonText,
    String? title,
    String? content,
    VoidCallback? onPressed,
  }) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return PopScope(
          canPop: false,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(12.r)),
            title: title != null ? Text(title) : null,
            content: content != null
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // const ImageLoaderWidget(
                      //     imagePath: AppAssets.greenTick, width: 60),
                      // const SizedBox(height: 20),
                      Text(content, textAlign: TextAlign.center),
                    ],
                  )
                : null,
            actions: [
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    if (onPressed != null) {
                      onPressed();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                    side: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .primary), // Border color
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.primary, // Text color
                      fontSize:
                          16.sp, // Use screenutil for responsive font size
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void showDialogMessage1({
    required BuildContext context,
    required String buttonText,
    String? title,
    String? content,
    VoidCallback? onPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: Theme.of(context).primaryColor)),
          title: title != null ? Text(title) : null,
          content: content != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ImageLoaderWidget(
                    //   imagePath: AppAssets.infoSquare,
                    //   width: 60,
                    //   color: Theme.of(context).primaryColor,
                    // ),
                    // const SizedBox(height: 20),
                    Text(content, textAlign: TextAlign.center),
                  ],
                )
              : null,
          actions: [
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                  if (onPressed != null) {
                    onPressed();
                  }
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  minimumSize: Size(100.w, 40.h),
                  side: BorderSide(
                      color: Theme.of(context).primaryColor), // Border color
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, // Text color
                    fontSize: 16.sp, // Use screenutil for responsive font size
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showDialogMessage2({
    required BuildContext context,
    required String buttonText,
    String? title,
    String? content,
    VoidCallback? onPressed,
    VoidCallback? onCancelPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: Theme.of(context).primaryColor)),
          title: title != null ? Text(title) : null,
          content: content != null
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const ImageLoaderWidget(
                    //   imagePath: AppAssets.disclaimer,
                    //   width: 50,
                    //   color: AppThemes.redColor,
                    // ),
                    // const SizedBox(height: 10),
                    Text(content, textAlign: TextAlign.center),
                  ],
                )
              : null,
          actions: [
            // Cancel Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    if (onPressed != null) {
                      onPressed();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                    side: BorderSide(
                        color: Theme.of(context).primaryColor), // Border color
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.primary, // Text color
                      fontSize:
                          16.sp, // Use screenutil for responsive font size
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                    if (onCancelPressed != null) {
                      onCancelPressed();
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    minimumSize: Size(100.w, 40.h),
                    side: BorderSide(
                        color: Theme.of(context).primaryColor), // Border color
                  ),
                  child: Text(
                    "No",
                    style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.primary, // Text color
                      fontSize:
                          16.sp, // Use screenutil for responsive font size
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
  static void showDialogMessageWithTimer({
    required BuildContext context,
    required String buttonText,
    required ValueNotifier<Duration> durationValue,
    required ValueNotifier<bool> value,
    String? title,
    String? content,
    VoidCallback? onPressed,
    VoidCallback? onCancelPressed,

  }) {
    showDialog(
      context: context,
      builder: (context) {
        return ValueListenableBuilder(
          valueListenable: value,
          builder: (context, value, child) {
            return AlertDialog(

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  side: BorderSide(color: Theme.of(context).primaryColor)),
              title: title != null ? Text(title) : null,
              content: content != null
                  ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image(image: AssetImage(AppAssets.getImagePath(context, AppAssets.caution2)),width: 50,),
                  // const SizedBox(height: 10),
                  Text(content, textAlign: TextAlign.center),
                ],
              )
                  : null,

              actions: [
                // Cancel Button
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IgnorePointer(
                          ignoring: !value,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context); // Close the dialog
                              if (onPressed != null) {
                                onPressed();
                              }
                            },
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              minimumSize: Size(100.w, 40.h),
                              side: BorderSide(
                                  color: value ? Colors.green : Theme.of(context).disabledColor), // Border color
                            ),
                            child: Text(
                              buttonText,
                              style: TextStyle(
                                color:
                                value ? Colors.green : Theme.of(context).disabledColor, // Text color
                                fontSize:
                                16.sp, // Use screenutil for responsive font size
                              ),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context); // Close the dialog
                            if (onCancelPressed != null) {
                              onCancelPressed();
                            }
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            minimumSize: Size(100.w, 40.h),
                            side: const BorderSide(
                                color: Colors.red), // Border color
                          ),
                          child: Text(
                            "No",
                            style: TextStyle(
                              color:
                              Colors.red, // Text color
                              fontSize:
                              16.sp, // Use screenutil for responsive font size
                            ),
                          ),
                        ),
                      ],
                    ),
                    ValueListenableBuilder(
                        valueListenable: durationValue,
                        builder: (context, v, child) {
                          return value
                              ? const SizedBox()
                              : Text(
                            formatDuration(v),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium,
                          );
                        }),
                    RichText(
                        text: TextSpan(
                            text: "* ",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(color: Colors.red),
                            children: [
                              TextSpan(
                                  text:
                                  "Note : If Request is submitted once, it can not be Reversed.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium)
                            ]))

                  ],
                ),
              ],
            );
          }
        );
      },
    );
  }
 static  String formatDuration(Duration value) {
    print("DURATIONNNNNNNNNNNNN");
    int durationInSec = value.inSeconds;
    // int minutes = durationInSec ~/ 60;
    // int seconds = durationInSec % 60;
    return "00 : ${durationInSec.toString().padLeft(2, '0')}";
  }

}
