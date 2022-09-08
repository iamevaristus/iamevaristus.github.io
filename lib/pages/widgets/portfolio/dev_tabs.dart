// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class DevTab {
  Text section;
  Icon icon;
  DevTab({required this.section, required this.icon});
}

icon(icon){
  return Icon(icon, size: 22, color: green,);
}


final devtabData = [
  DevTab(section: Text("Softwares"), icon: icon(Icons.developer_board)),
  DevTab(section: Text("Abilities"), icon: icon(Icons.developer_mode)),
  DevTab(section: Text("Areas"), icon: icon(Icons.laptop_mac_sharp))
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