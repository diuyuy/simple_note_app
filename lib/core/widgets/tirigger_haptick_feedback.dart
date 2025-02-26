import 'package:flutter/services.dart';

Future<void> triggerHaptickFeedBack() async {
  await HapticFeedback.vibrate();
}
