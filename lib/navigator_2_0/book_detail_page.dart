import 'package:flutter/material.dart';
import 'package:routing_example/model/book.dart';
import 'package:routing_example/navigator_2_0/page/book_details_screen.dart';

class BookDetailsPage extends Page {
  final Book book;

  BookDetailsPage({
    this.book,
  }) : super(key: ValueKey(book));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen(book: book);
      },
    );
  }
}
