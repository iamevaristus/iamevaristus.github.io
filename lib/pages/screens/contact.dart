import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/validate.dart';
import '../../function/external.dart';
import '../../model/link_list.dart';
import '../../res/dimension.dart';
import '../../widgets/button.dart';
import '../../widgets/text.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController message = TextEditingController();

  String userName = "";
  String userEmail = "";
  String userMessage = "";

  send() async {
    final valid = _formKey.currentState!.validate();
    if(valid){
      _formKey.currentState!.save();
      sendEmail(name.text, email.text, message.text, evaMailAddress);
      setState(() {
        name.text = "";
        email.text = "";
        message.text = "";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveWidget.isDesktop(context)
      ? const EdgeInsets.only(right: 20, top: 100, bottom: 100)
      : ResponsiveWidget.isTablet(context)
      ? const EdgeInsets.only(right: 20, top: 80, bottom: 80)
      : const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(
            text: "Connect With Me",
            size: ResponsiveWidget.isDesktop(context) ? 36 : ResponsiveWidget.isTablet(context) ? 30 : 24,
          ),
          const SizedBox(height: 50),
          Container(
            padding: ResponsiveWidget.isDesktop(context)
            ? const EdgeInsets.all(40)
            : ResponsiveWidget.isTablet(context)
            ? const EdgeInsets.all(30)
            : const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: whiteColor
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormWidget(
                    labeltext: "Enter your email address",
                    keyboard: TextInputType.name,
                    validate: validateEmail,
                    controller: email,
                    saved: (value) => setState(() => userEmail = value!),
                  ),
                  TextFormWidget(
                    labeltext: "Enter your name",
                    keyboard: TextInputType.emailAddress,
                    validate: validateName,
                    saved: (value) => setState(() => userName = value!),
                    controller: name,
                  ),
                  TextFormWidget(
                    labeltext: "Enter your message",
                    keyboard: TextInputType.multiline,
                    maxLines: 8,
                    validate: validateMessage,
                    saved: (value) => setState(() => userMessage = value!),
                    controller: message,
                  ),
                  ButtonIconWidget(text: mailButton, onPressed: () => send(), icon: Icons.mail_rounded)
                ],
              )
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(text: "Evaristus Adimonyemma", color: green),
              TextWidget(text: "©2022",  color: green)
            ],
          )
        ],
      ),
    );
  }
}