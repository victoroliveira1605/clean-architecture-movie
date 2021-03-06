import 'package:clean_architecture_triple/feature/movies/presentation/pages/movies_page.dart';
import 'package:clean_architecture_triple/feature/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

abstract class AppPages {
  static final Map<String, Widget Function(BuildContext)> pages = {
    Routes.SPLASH: (context) => new SplashPage(),
    Routes.MOVIES: (context) => new MoviesPage(),
  };
}

abstract class Routes {
  static const SPLASH = '/splash';
  static const MOVIES = '/movies';
}
