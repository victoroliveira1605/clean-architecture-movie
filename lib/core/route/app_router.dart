import 'package:clean_architecture_movie/feature/detail/presentation/pages/details_page.dart';
import 'package:clean_architecture_movie/feature/movies/presentation/pages/movies_page.dart';
import 'package:clean_architecture_movie/feature/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

abstract class AppPages {
  static final Map<String, Widget Function(BuildContext)> pages = {
    Routes.SPLASH: (context) => new SplashPage(),
    Routes.MOVIES: (context) => new MoviesPage(),
    Routes.DETAIL: (context) => new DetailsPage(),
  };
}

abstract class Routes {
  static const SPLASH = '/splash';
  static const MOVIES = '/movies';
  static const DETAIL = '/details';
}