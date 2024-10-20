import 'package:ahtarandakhtar/features/Home/presentation/veiws/Homeview.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/IngredientsVeiw.dart';
import 'package:ahtarandakhtar/features/Splash/presentation/Splash_veiw.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
 

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashVeiw(),
      ),
      GoRoute(
        path: Homeview.homeViewRouteName,
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path: Ingredientsveiw.ingredientsveiwRoute,
        builder: (context, state) => const Ingredientsveiw(),
      ),
    ],
  );
}
