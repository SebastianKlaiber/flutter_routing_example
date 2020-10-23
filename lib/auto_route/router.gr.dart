// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../model/book.dart';
import 'page/books_details_page.dart';
import 'page/home_page.dart';

class Routes {
  static const String booksListScreen = '/';
  static const String bookDetailsScreen = '/book-details-screen';
  static const all = <String>{
    booksListScreen,
    bookDetailsScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.booksListScreen, page: BooksListScreen),
    RouteDef(Routes.bookDetailsScreen, page: BookDetailsScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    BooksListScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BooksListScreen(),
        settings: data,
      );
    },
    BookDetailsScreen: (data) {
      final args = data.getArgs<BookDetailsScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BookDetailsScreen(book: args.book),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushBooksListScreen() =>
      push<dynamic>(Routes.booksListScreen);

  Future<dynamic> pushBookDetailsScreen({
    @required Book book,
  }) =>
      push<dynamic>(
        Routes.bookDetailsScreen,
        arguments: BookDetailsScreenArguments(book: book),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// BookDetailsScreen arguments holder class
class BookDetailsScreenArguments {
  final Book book;
  BookDetailsScreenArguments({@required this.book});
}
