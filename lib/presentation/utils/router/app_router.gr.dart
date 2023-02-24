// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:netflix_clone/presentation/pages/details/details_page.dart'
    as _i2;
import 'package:netflix_clone/presentation/pages/home/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>(
          orElse: () => const DetailsRouteArgs());
      return _i3.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.DetailsPage(
          key: args.key,
          overview: args.overview,
          title: args.title,
          releaseDate: args.releaseDate,
          voteAverage: args.voteAverage,
          imgUrl: args.imgUrl,
        ),
        transitionsBuilder: _i3.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          DetailsRoute.name,
          path: '/details-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DetailsPage]
class DetailsRoute extends _i3.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    _i4.Key? key,
    String? overview,
    String? title,
    String? releaseDate,
    double? voteAverage,
    String? imgUrl,
  }) : super(
          DetailsRoute.name,
          path: '/details-page',
          args: DetailsRouteArgs(
            key: key,
            overview: overview,
            title: title,
            releaseDate: releaseDate,
            voteAverage: voteAverage,
            imgUrl: imgUrl,
          ),
        );

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    this.key,
    this.overview,
    this.title,
    this.releaseDate,
    this.voteAverage,
    this.imgUrl,
  });

  final _i4.Key? key;

  final String? overview;

  final String? title;

  final String? releaseDate;

  final double? voteAverage;

  final String? imgUrl;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, overview: $overview, title: $title, releaseDate: $releaseDate, voteAverage: $voteAverage, imgUrl: $imgUrl}';
  }
}
