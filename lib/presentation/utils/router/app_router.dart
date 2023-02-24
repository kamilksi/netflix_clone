import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:netflix_clone/presentation/pages/details/details_page.dart';
import 'package:netflix_clone/presentation/pages/home/home_page.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(
        page: DetailsPage,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade)
  ],
)
class $AppRouter {}
