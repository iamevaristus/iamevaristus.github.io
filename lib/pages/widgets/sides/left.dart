import 'package:flutter/material.dart';
import 'package:mervoweb/config/colors.dart';
import 'package:mervoweb/config/images.dart';
import 'package:mervoweb/function/external.dart';
import 'package:mervoweb/model/link_list.dart';
import 'package:mervoweb/model/media.dart';

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
                child: Image.asset(social.image, width: 20, height: 20),
              );
            }
          ),
          const SizedBox(height: 10),
          SocialMedia(pressed: () => launchMail(evaMailAddress), asset: email),
          // const SizedBox(height: 10),
          // SocialMedia(pressed: () => makePhoneCall("09164806343"), asset: email),
          const SizedBox(height: 10),
          Container(color: whiteColor, width: 3, height: 200)
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
      child: Image.asset(asset, width: width,),
    );
  }
}