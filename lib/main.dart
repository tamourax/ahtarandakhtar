import 'package:ahtarandakhtar/core/utils/App_router.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Splash/presentation/Splash_veiw.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
