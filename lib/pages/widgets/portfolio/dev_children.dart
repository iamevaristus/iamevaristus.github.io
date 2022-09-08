import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../model/portfolio.dart';
import '../../../res/dimension.dart';
import '../../../widgets/text.dart';

class DevLanguages extends StatelessWidget {
  const DevLanguages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(color: blueColor, borderRadius: const BorderRadius.only(topRight: Radius.circular(15))),
            child: const Center(child: TextWidget(text: "Dev Tools and Languages", size: 12)),
          ),
          devList(context, languages)
          // Column(children: lists(context, languages))
        ]
      ),
    );
  }
}

class DevFrameWorks extends StatelessWidget {
  const DevFrameWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(color: blueColor, borderRadius: const BorderRadius.only(topRight: Radius.circular(15))),
            child: const Center(child: TextWidget(text: "Skills and Specialty", size: 12)),
          ),
          devList(context, skills)
        ]
      ),
    );
  }
}

class DevAreas extends StatelessWidget {
  const DevAreas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(color: blueColor),
            child: const Center(child: TextWidget(text: "Present and Future Interests", size: 12)),
          ),
          devList(context, interests)
        ]
      ),
    );
  }
}

Widget devList(BuildContext context, List<PortFolioItem> data){
  return Padding(
    padding: ResponsiveWidget.isDesktop(context)
    ? const EdgeInsets.all(24)
    : const EdgeInsets.all(16),
    child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: ResponsiveWidget.isDesktop(context)
      ? const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 3,
        childAspectRatio: 3,
      )
      : ResponsiveWidget.isTablet(context)
      ? const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        childAspectRatio: 3,
      )
      : const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 3,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final text = data[index];
        return SizedBox(height: 5, child: TextWidget(text: text.title));
      }
    ),
  );
}

List<Widget> lists(BuildContext context, List<PortFolioItem> dataList){
  final list = dataList;
  return list.map((e) => Row(children: [TextWidget(text: e.title )])).toList();
}