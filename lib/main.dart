import 'package:flutter/material.dart';
import 'dart:io';
import 'views/ios/ios.app.dart';
import 'views/android/android.app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

// 21/10 Pre-Apresentação
// 18/11 Apresentação

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore db = FirebaseFirestore.instance;

  runApp(Platform.isIOS ? IosApp() : const AndroidApp());
}
