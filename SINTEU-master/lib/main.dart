import 'package:flutter/material.dart';
import 'core/app_mobile.dart';
import 'core/app_web.dart';

void main() {
  var modoWeb = true;

  runApp(modoWeb ? AppWeb() : AppMobile());
  
}
