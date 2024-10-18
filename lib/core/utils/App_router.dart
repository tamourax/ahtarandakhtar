import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Splash/presentation/Splash_veiw.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Homeview(),
      ),
    ],
  );
}
