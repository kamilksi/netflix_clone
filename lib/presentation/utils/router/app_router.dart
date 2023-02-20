import 'package:auto_route/annotations.dart';
import 'package:netflix_clone/presentation/pages/details/details_page.dart';
import 'package:netflix_clone/presentation/pages/home/home_page.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailsPage),
  ],
)
class $AppRouter {}
