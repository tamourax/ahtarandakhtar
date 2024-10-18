import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/IngredientsVeiw.dart';
import 'package:ahtarandakhtar/features/Splash/presentation/Splash_veiw.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
<<<<<<< HEAD
        builder: (context, state) => const Ingredientsveiw(),
=======
        builder: (context, state) => const SplashVeiw(),
>>>>>>> 8ac5f3688d40b811c827f13ac02c6c70d7870206
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Homeview(),
      ),
    ],
  );
}
