import 'package:flutter/material.dart';

import '../config/navigate.dart';
import '../pages/screens/contact.dart';
import '../pages/screens/gallery.dart';
import '../pages/screens/home.dart';
import '../pages/screens/portfolio.dart';

String startStatement() {
  var hour = DateTime.now().hour;
  if(hour == 12 && hour < 5){
    return '"We\'ve got one life to live!. Let\'s go all in!"';
  }
  else if (hour < 5) {
    return '"I strongly believe that technology has more to offer. After all, it is the invention of man."';
  } else if (hour < 10) {
    return '"There is no time which is late. We all have our own starting point. Push beyond and you will excel."';
  } else if (hour < 16) {
    return '"Talent, Money and Grace is the foundation you need. But hardwork, crowns it all to success."';
  } else if (hour < 20) {
    return '"Pray that you will never lose yourself in the race. That\'s one thing you will forever regret."';
  }
  return '"Rest, have fun and make sure to have a good night sleep. It never stops,"';
}

toHome(BuildContext context){toNamed(context, const HomeSection());}

toGallery(BuildContext context){toNamed(context, const GallerySection());}

toPortfolio(BuildContext context){toNamed(context, const PortfolioSection());}

toContact(BuildContext context){toNamed(context, const ContactSection());}