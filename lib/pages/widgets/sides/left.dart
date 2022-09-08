import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import '../../../config/images.dart';
import '../../../function/external.dart';
import '../../../model/link_list.dart';
import '../../../model/media.dart';

class LeftContent extends StatelessWidget {
  const LeftContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MediaModel> media = mediaData;
    return Container(
      width: MediaQuery.of(context).size.width / 5,
      height: MediaQuery.of(context).size.height,
      color: darkBlueColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          ListView.separated(
            shrinkWrap: true,
            itemCount: media.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 10,),
            itemBuilder: (context, index) {
              final social = media[index];
              return InkWell(
                onTap: () => launchInBrowser(social.link),
                child: Container(
                  width: 26,
                  height: 26,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    // borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: green,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset(social.image, width: 20, height: 20, color: blueColor)
                ),
              );
            }
          ),
          const SizedBox(height: 10),
          SocialMedia(pressed: () => launchMail(evaMailAddress), asset: email),
          // const SizedBox(height: 10),
          // SocialMedia(pressed: () => makePhoneCall("09164806343"), asset: email),
          const SizedBox(height: 10),
          Container(color: green, width: 3, height: 200)
        ],
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  final void Function() pressed;
  final String asset;
  final double width;
  const SocialMedia({
    Key? key, required this.pressed, required this.asset, this.width = 20}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        width: 26,
        height: 26,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          // borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: green,
          shape: BoxShape.circle
        ),
        child: Image.asset(asset, width: width, color: blueColor)
      ),
    );
  }
}