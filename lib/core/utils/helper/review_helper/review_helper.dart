import 'dart:developer';
import 'dart:io';

import 'package:in_app_review/in_app_review.dart';

class ReviewHelper {
  static final InAppReview _inAppReview = InAppReview.instance;

  static void openStoreReview() async {
    try {
      if (Platform.isAndroid) {
        await _inAppReview.openStoreListing();
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
