import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../res/dimension.dart';
import 'screens/contact.dart';
import 'screens/gallery.dart';
import 'screens/home.dart';
import 'screens/portfolio.dart';
import 'widgets/sides/left.dart';
import 'widgets/sides/right.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {

  List<Widget> data = [];

  @override
  void initState() {
    super.initState();
    loadWidget();
  }

  List<Widget> widgets = [
    BounceInUp(child: const HomeSection()),
    Bounce(child: const PortfolioSection()),
    BounceInDown(child: const GallerySection()),
    FadeOutDownBig(child: const ContactSection()),
  ];

  String myLink = "https://iamevaristus.github.io/";

  Future loadWidget() async {
    final data = widgets;
    setState(() => this.data = data);
  }

  Future refresh() async {
    final url = Uri.parse(myLink);
    final response = await http.get(url);
    if(response.statusCode == 200){
      final lists = response.body;
      setState(() => data = lists as List<Widget>);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveWidget.isPhone(context)
      ? Column(children: widgets)
      : ResponsiveWidget.isTablet(context)
      ? Row(
          children: [
            const LeftContent(),
            Expanded(child: Column(children: widgets)),
          ],
        )
      : Row(
          children: [
            const LeftContent(),
            Expanded(child: Column(children: widgets)),
            const RightContent()
          ],
        )
    );
  }
}