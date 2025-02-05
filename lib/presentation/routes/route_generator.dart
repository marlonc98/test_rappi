import 'package:flutter/material.dart';
import 'package:test_rappi/presentation/ui/pages/movies/list/movies_list_page.dart';
import 'package:test_rappi/presentation/ui/pages/splah/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case SplashPage.route:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case MoviesListPage.route:
        return MaterialPageRoute(builder: (_) => const MoviesListPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
