import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Splash/presentation/Splash_veiw.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashVeiw(),
    );
  }
}
