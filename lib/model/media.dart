import 'package:flutter/material.dart';

import '../config/colors.dart';
import '../config/images.dart';
import 'link_list.dart';

class MediaModel{
  final String image;
  final Uri link;
  MediaModel({required this.image, required this.link});
}

icons(icon) {return Icon(icon, size: 24, color: mainColor);}

final mediaData = [
  MediaModel(image: instagram, link: instagramLink ),
  MediaModel(image: twitter, link: twitterLink),
  MediaModel(image: linkedIn, link: linkedInLink),
  MediaModel(image: facebook, link: facebookLink),
  MediaModel(image: github, link: githubLink),
];