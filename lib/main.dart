import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomCard.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomgridVeiw.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/newcard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
