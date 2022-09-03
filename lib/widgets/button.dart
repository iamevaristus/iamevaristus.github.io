import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/widgets/loader.dart';

class BlueButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool isLoading;
  final bool isEnabled;
  final Color color;
  final String? family;
  final double size;
  const BlueButtonWidget({
    Key? key, required this.onPressed, this.height = 40,
    required this.text, this.width = 180, this.family,
    this.isLoading = false, this.isEnabled = false, this.color = Colors.white, this.size = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? () {} : onPressed,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: whiteColor)
        ),
        alignment: Alignment.center,
        child: isLoading ? const WhiteLoader() : Text(
          text,
          style: TextStyle(color: color, fontSize: size, fontFamily: family),
          textAlign: TextAlign.center,
        )
      )
    );
  }
}

class ButtonIconWidget extends StatelessWidget {
  final String? family;
  final String text;
  final VoidCallback onPressed;
  final IconData icon;
  final Color color;
  final double size;
  final double iconSize;
  const ButtonIconWidget({
    Key? key, this.family, this.color = Colors.white, this.size = 14, this.iconSize = 24,
    required this.text, required this.onPressed, required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: iconSize,),
      label: Text(text, style: TextStyle(color: color, fontSize: size, fontFamily: family)),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return mainColor;
            return darkBlueColor;
          }
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return whiteColor;
            return mainColor;
          }
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 18, horizontal: 10)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(style: BorderStyle.solid, color: whiteColor)
          )
        )
      )
    );
  }
}