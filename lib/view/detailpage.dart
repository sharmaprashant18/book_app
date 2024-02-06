import 'package:bookapp/model/booksData1.dart';
import 'package:bookapp/model/secondbooks1.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: bookssdata1.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [Text(booksData1[index].detail)],
              ),
            );
          },
        ),
      ),
    );
  }
}
