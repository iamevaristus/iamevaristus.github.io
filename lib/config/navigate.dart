import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'debug.dart';

to(BuildContext context, destination){
  try {
    Beamer.of(context).beamTo(destination);
    debug(
      Beamer.of(context).beamingHistory
      .map((e) => e.history
      .map((val) => val.routeInformation.location
      )).toList()
    );
  }  catch (e) {
    debug(e);
  }
}

toNamed(BuildContext context, destination){
  try {
    Beamer.of(context).beamToNamed(destination);
    debug(
      Beamer.of(context).beamingHistory
      .map((e) => e.history
      .map((val) => val.routeInformation.location
      )).toList()
    );
  } catch (e) {
    debug(e);
  }
}

back(BuildContext context){
  try {
    Beamer.of(context).beamBack();
    debug(
      Beamer.of(context).beamingHistory
      .map((e) => e.history
      .map((val) => val.routeInformation.location
      )).toList()
    );
  } catch (e) {
    debug(e);
  }
}