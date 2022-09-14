import 'package:iamevaristus_website/config/images.dart';
import 'package:iamevaristus_website/model/link_list.dart';

class ImageLink{
  String image;
  Uri link;
  ImageLink({required this.image, required this.link});
}

class ProjectModel{
  String title;
  String description;
  List<String> taglines;
  List<ImageLink> imageLink;

  ProjectModel({
    required this.title,
    required this.description,
    required this.imageLink,
    required this.taglines,
  });
}

final linkOne = [ImageLink(image: github, link: whatsappClone)];

final projectData = [
  ProjectModel(
    title: "Whatsapp Clone",
    description: "This is a clone for whatsapp-like project which uses firebase as it's backend database. The UI was designed using Figma software.",
    imageLink: linkOne,
    taglines: ["Flutter ", " Firebase ", " RiverPod ", " Responsive ", " Application"]
  ),
];

// final linkOneData = [
//   ImageLink(image: image, link: link)
// ];

// final projectData = [
//   ProjectModel(
//     title: title,
//     description: description,
//     imageLink: linkOneData,
//     taglines: []
//   )
// ];