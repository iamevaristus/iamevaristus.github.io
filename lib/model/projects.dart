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