import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config/colors.dart';
import '../../model/projects.dart';
import '../../res/dimension.dart';
import '../../widgets/text.dart';

Widget projectListView(BuildContext context, List<ProjectModel> data){
  return Padding(
    padding: ResponsiveWidget.isDesktop(context)
    ? const EdgeInsets.all(24)
    : const EdgeInsets.all(16),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder:(context, index) {
        final items = data[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              TextWidget(text: items.title),
              const SizedBox(height: 20),
              TextWidget(text: items.description, size: 14),
              const SizedBox(height: 20),
              Row(children: items.taglines.map((e) => TextWidget(text: e.toString())).toList()),
              const SizedBox(height: 20),
              Row(children: items.imageLink.map((e) => ImageLink(asset: e.image, url: e.link)).toList())
            ],
          ),
        );
      },
    ),
  );
}

Widget projectGridView(BuildContext context, List<ProjectModel> data){
  return Padding(
    padding: ResponsiveWidget.isDesktop(context)
    ? const EdgeInsets.all(24)
    : const EdgeInsets.all(16),
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3,
        crossAxisSpacing: 5
      ),
      itemBuilder:(context, index) {
        final items = data[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              TextWidget(text: items.title),
              const SizedBox(height: 20),
              TextWidget(text: items.description, size: 14),
              const SizedBox(height: 20),
              Row(children: items.taglines.map((e) => TextWidget(text: e.toString())).toList()),
              const SizedBox(height: 20),
              Row(children: items.imageLink.map((e) => ImageLink(asset: e.image, url: e.link)).toList())
            ],
          ),
        );
      }
    ),
  );
}

class ImageLink extends StatelessWidget {
  final Uri url;
  final String asset;
  final double width;
  const ImageLink({
    Key? key, required this.asset, this.width = 20, required this.url
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(url),
      child: Container(
        width: 26,
        height: 26,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          // borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: whiteColor,
          shape: BoxShape.circle
        ),
        child: Image.asset(asset, width: width,)
      ),
    );
  }
}