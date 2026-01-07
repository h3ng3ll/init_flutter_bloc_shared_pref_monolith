import 'package:fluttertoast/fluttertoast.dart';

import '../resources/colors/app_colors.dart';

class UiMessageService {
  static Future<void> showError(
    String msg, {
    int timeInSecondsDuration = 5,
  }) async {
    await Fluttertoast.showToast(
      msg: msg,
      timeInSecForIosWeb: timeInSecondsDuration,
      // gravity: ToastGravity.BOTTOM_LEFT,
      webPosition: 'center',
      // webBgColor:
      //     ' linear-gradient(to right ${AppColors.pictorialCarmine .toHex(
      //       leadingHashSign: false,
      //     )} ${AppColors.persia|nPink .toHex(
      //       leadingHashSign: false,
      //     )})',
    );
  }

  static Future<void> showInfo(
    String msg, {
    int timeInSecondsDuration = 3,
  }) async {
    await Fluttertoast.showToast(
      msg: msg,
      timeInSecForIosWeb: timeInSecondsDuration,
      textColor: AppColors.white,
      webPosition: 'center',
      backgroundColor: AppColors.black,
    );
  }

  static Future<void> showSuccess(
    String msg, {
    int timeInSecondsDuration = 3,
  }) async {
    await Fluttertoast.showToast(
      msg: msg,
      timeInSecForIosWeb: timeInSecondsDuration,
      textColor: AppColors.white,
      // backgroundColor: AppColors.verseGreen ,
      webPosition: 'center',
    );
  }
}
