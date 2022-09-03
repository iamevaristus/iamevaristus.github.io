import 'package:mervoweb/config/debug.dart';

class Except implements Exception{
  String message;
  String? code;
  Except(this.message, {this.code}) {debug(toString());}
  @override
  String toString() {
    return "Exception: $message";
  }
}