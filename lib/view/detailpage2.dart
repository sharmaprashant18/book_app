import 'package:bookapp/model/secondbooks1.dart';
import 'package:flutter/material.dart';

class DetailPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: bookssdata1.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [Text(bookssdata1[index].detail)],
              ),
            );
          },
        ),
      ),
    );
  }
}
