import 'package:flutter/material.dart';
import 'dart:io';

import 'views/ios/ios.app.dart';
import 'views/android/android.app.dart';

// 21/10 Pre-Apresentação
// 18/11 Apresentação

void main() {
  runApp(Platform.isIOS  ? IosApp() : AndroidApp());
}

