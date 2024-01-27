class ModelProfile {
  String type;
  String name;
  String image;
  String description;
  List<LinkAsIcon>? linksAsIcons;

  ModelProfile({
    required this.type,
    required this.name,
    required this.image,
    required this.description,
    required this.linksAsIcons,
  });
}

class LinkAsIcon {
  String icon;
  String link;

  LinkAsIcon({
    required this.icon,
    required this.link,
  });
}
