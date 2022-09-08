import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'exception.dart';

enum Popup{
  success,
  error,
  warning,
  info
}

Color getColor(popup) {
  switch (popup) {
    case Popup.error: return errorColor;
    case Popup.success: return successColor;
    case Popup.warning: return warningColor;
    case Popup.info: return warningColor;
    default:
  }
  throw Except("message");
}

showGetSnackbar({
  required String title,
  required String message,
  required Popup type,
  duration
}) async {
  Get.snackbar(
    title,
    message,
    duration: duration,
    colorText: whiteColor,
    backgroundColor: getColor(type)
  );
}