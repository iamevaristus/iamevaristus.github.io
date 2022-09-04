import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/pages/widgets/lists/items.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:mervoweb/widgets/text.dart';

Widget projectList(BuildContext context, List<ProjectItem> data){
  return Padding(
    padding: ResponsiveWidget.isDesktop(context)
    ? const EdgeInsets.all(24)
    : const EdgeInsets.all(16),
    child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: ResponsiveWidget.isDesktop(context)
      ? const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0
      )
      : ResponsiveWidget.isTablet(context)
      ? const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0
      )
      : const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final text = data[index];
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: tabBlueOne, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Container(
                width: 50, height: 50, decoration: BoxDecoration(color: whiteColor),
                child: Image.asset(
                  text.image,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Container(
                width: 50, height: 50, decoration: BoxDecoration(color: mainColor),
                child: Column(
                  children: [
                    TextWidget(text: text.name),
                    const SizedBox(height: 10),
                    TextWidget(text: text.description, size: 12,),
                    const SizedBox(height: 10),
                    Row(
                      children: [TextWidget(text: text.tagLines, size: 12,)],
                    ),
                    const SizedBox(height: 10),
                    Row(children: [Image.asset(text.imageChild)])
                  ],
                ),
              )
            ],
          ),
        );
      }
    ),
  );
}