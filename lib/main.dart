import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/firebase_options.dart';
import 'package:test/screens/homepage.dart';
import 'bottomNavigationbar.dart';
import 'constant/ConstantColor.dart';
import 'package:google_sign_in/google_sign_in.dart';

main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ConstantColor.primaryColor,
        secondaryHeaderColor: ConstantColor.primaryColor,
      ),
      home: const Bottom()));

}
