import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static Future<void> launchPrivacyPolicyUrl() async {
    final privacyPolicyUrl = dotenv.env['PRIVACY_POLICY_URL'];
    if (privacyPolicyUrl == null) throw Exception('Url error');

    final Uri url = Uri.parse(privacyPolicyUrl);

    try {
      if (!await launchUrl(url, mode: LaunchMode.platformDefault)) {
        throw Exception('Cannot launch Url');
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
