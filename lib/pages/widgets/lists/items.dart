import 'package:flutter/material.dart';

class PortFolioItem{
  String title;

  PortFolioItem({
    required this.title
  });
}

class ProjectItem{
  String name;
  String description;
  String taglineOne;
  String taglineTwo;
  String tagLineThree;
  String tagLineFour;
  String image;
  List<Widget> imageChildren;

  ProjectItem({
    required this.description,
    required this.image,
    required this.imageChildren,
    required this.name,
    this.taglineOne = "",
    this.tagLineFour = "",
    this.tagLineThree = "",
    this.taglineTwo = ""
  });
}