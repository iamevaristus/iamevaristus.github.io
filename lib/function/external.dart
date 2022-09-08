import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import '../config/debug.dart';
import '../config/exception.dart';
import '../config/snackbar.dart';
import '../model/link_list.dart';

Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

Future<void> makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
  await launchUrl(launchUri);
}

Future<void> launchMail(String url) async {
  final Uri mailtoUri = Uri(scheme: "mailto", path: url);
  await launchUrl(mailtoUri);
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
}

final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: evaMailAddress,
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
      "message": "Here is my message"
    }),
  );

Future sendEmail(String name, String email, String message, String toEmail) async {
  const serviceID = "Evastorm1";
  const templateID = "template_9tf66z6";
  const userID = "nzePxYoVaiSwpJF_R";
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  try {
    final response = await http.post(
      url,
      headers: {
        'origin': 'https//localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceID,
        'template_id': templateID,
        'user_id': userID,
        'template_params': {
          'user_name': name,
          'to_email': toEmail,
          'user_email': email,
          'message': message
        }
      })
    );
    showGetSnackbar(
      title: "From TMG",
      message: "Thanks for reaching out. You won't wait much for a reply.",
      type: Popup.success,
      duration: const Duration(milliseconds: 1500)
    );
    debug(response.body);
  } on Except catch (e) {
    showGetSnackbar(title: "From TMG", message: "Sorry, couldn't reach out to Mervo.", type: Popup.error);
    debug(e.code);
  }
}

Future downloadResume({required String? fileName,required String url, bool? enabled}) async {
  try {
    AnchorElement anchor = AnchorElement(href: url);
    anchor.download = fileName;
    anchor.click();
  } on Except catch (e) {
    debug(e.code);
  }
  return null;
}