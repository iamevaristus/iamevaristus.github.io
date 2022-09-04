import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/widgets/text.dart';

class ProjectPhoneBox extends StatelessWidget {
  final String header;
  final String description;
  final List<Widget> tagLists;
  final List<Image> imageLinks;
  const ProjectPhoneBox(
      {Key? key,
      required this.header,
      required this.description,
      required this.tagLists,
      required this.imageLinks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: tabBlueOne),
      child: Column(
        children: [
          TextWidget(text: header),
          const SizedBox(height: 40),
          TextWidget(text: description),
          const SizedBox(height: 40),
          Row(children: tagLists),
          const SizedBox(height: 40),
          Row(children: imageLinks),
        ],
      ),
    );
  }
}

class BiggerProjectBox extends StatelessWidget {
  final String header;
  final String description;
  final List<Widget> tagLists;
  final List<Image> imageLinks;
  final String image;
  const BiggerProjectBox(
      {Key? key,
      required this.header,
      required this.description,
      required this.tagLists,
      required this.imageLinks,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tabBlueOne),
        child: Image.asset(image, fit: BoxFit.contain,),
      ),
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tabBlueOne),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(text: header),
              const SizedBox(height: 40),
              TextWidget(text: description),
              const SizedBox(height: 40),
              Row(children: tagLists),
              const SizedBox(height: 40),
              Row(children: imageLinks),
            ],
          ),
        ),
      )
    ]);
  }
}
