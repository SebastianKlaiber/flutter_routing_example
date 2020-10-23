import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing_example/model/book.dart';
import 'package:routing_example/auto_route/router.gr.dart';
import 'package:routing_example/main_new_routing.dart';

class BooksListScreen extends StatelessWidget {
  final List<Book> books = [
    Book('Stranger in a Strange Land', 'Robert A. Heinlein'),
    Book('Foundation', 'Isaac Asimov'),
    Book('Fahrenheit 451', 'Ray Bradbury'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (var book in books)
            ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
              onTap: () {
                ExtendedNavigator.root.pushBookDetailsScreen(book: book);
              },
            )
        ],
      ),
    );
  }
}
