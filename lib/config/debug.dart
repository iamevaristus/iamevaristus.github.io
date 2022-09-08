import 'package:flutter/foundation.dart';

debug(text){
  if(kDebugMode){
    debugPrint(text.toString());
  }
}