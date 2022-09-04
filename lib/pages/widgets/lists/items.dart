class PortFolioItem{
  String title;

  PortFolioItem({
    required this.title
  });
}

class ProjectItem{
  String name;
  String description;
  String tagLines;
  String image;
  String imageChild;

  ProjectItem({
    required this.description,
    required this.image,
    required this.imageChild,
    required this.name,
    required this.tagLines
  });
}