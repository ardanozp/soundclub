import 'package:flutter/material.dart';
import 'package:music_app/app/app_theme.dart';
import 'package:music_app/app/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:music_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.theme,
    );
  }
}
