import 'package:flutter/material.dart';
import 'package:mervoweb/config/images.dart';
import 'package:mervoweb/pages/widgets/projects/box.dart';
import 'package:mervoweb/widgets/text.dart';

class PhoneProjects extends StatelessWidget {
  const PhoneProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectPhoneBox(
          header: "Foreign Currency Exchange",
          description: "Built a fully functional mobile app for the exchange of foreign currencies.",
          tagLists: const [
            TextWidget(text: "Exchange", size: 12,)
          ],
          imageLinks: [Image.asset(mervo, width: 20,), Image.asset(mervo, width: 20,), Image.asset(mervo, width: 20,)]
        )
      ],
    );
  }
}