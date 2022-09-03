import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/res/dimension.dart';
import 'package:tab_container/tab_container.dart';

List<Color> animatedColors = [
  tabBlueOne,
  tabBlueTwo,
  tabBlueThree,
];

class AnimatedHorizontalTab extends StatefulWidget {
  final List<Widget> children;
  final List<dynamic> tabs;
  final bool stringtabs;
  final double height;
  const AnimatedHorizontalTab({
    Key? key, required this.children, required this.tabs, this.stringtabs = true, this.height = 300}) : super(key: key);
  @override
  State<AnimatedHorizontalTab> createState() => _AnimatedHorizontalTabState();
}

class _AnimatedHorizontalTabState extends State<AnimatedHorizontalTab> {
  late TextTheme textTheme;
  @override
  void didChangeDependencies() {
    textTheme = Theme.of(context).textTheme;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: widget.height,
          child: AspectRatio(
            aspectRatio: 10 / 8,
            child: TabContainer(
              radius: 20,
              tabEdge: ResponsiveWidget.isDesktop(context) ? TabEdge.left
              : TabEdge.top,
              tabCurve: Curves.easeIn,
              transitionBuilder: (child, animation) {
                animation = CurvedAnimation(curve: Curves.easeIn, parent: animation);
                return SlideTransition(
                  position: Tween(begin: const Offset(0.2, 0.0), end: const Offset(0.0, 0.0)
                  ).animate(animation),
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              colors: animatedColors,
              selectedTextStyle: textTheme.bodyText2?.copyWith(fontSize: 15.0),
              unselectedTextStyle: textTheme.bodyText2?.copyWith(fontSize: 15.0),
              tabs: widget.tabs,
              isStringTabs: widget.stringtabs,
              children: widget.children,
            ),
          ),
        ),
      ]
    );
  }
}