import 'package:auto_route/auto_route_annotations.dart';
import 'package:routing_example/auto_route/page/books_details_page.dart';
import 'package:routing_example/auto_route/page/home_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: BooksListScreen, initial: true),
    AdaptiveRoute(page: BookDetailsScreen),
  ],
)
class $Router {}
