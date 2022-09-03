// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:mervoweb/widgets/text.dart';

class DevTab {
  Text section;
  Icon icon;

  DevTab({
    required this.section,
    required this.icon,
  });
}

icon(icon){
  return Icon(icon, size: 22,);
}

Icon lang = Icon(
  Icons.developer_board,
  size: 22,
  color: whiteColor,
);

final devtabData = [
  DevTab(section: Text("Languages"), icon: icon(Icons.developer_board)),
  DevTab(section: Text("Frameworks"), icon: icon(Icons.developer_mode)),
  DevTab(section: Text("Specialized Areas"), icon: icon(Icons.laptop_mac_sharp))
];

List devTab(){
  List<DevTab> dev = devtabData;
  return dev.map((e) => "${e.section} ${e.icon}").toList();
}

List<Widget> devtab(BuildContext context) => <Widget>[
  icon(Icons.developer_board),
  icon(Icons.developer_mode),
  icon(Icons.laptop_mac_sharp),
];