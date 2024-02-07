import 'package:bookapp/model/booksData1.dart';
import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
        itemCount: booksData1.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: height * .45),
            child: Column(
              children: [
                Text(
                  booksData1[index].detail,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
          );
        },
      ),
      backgroundColor: Color(0xffF7BAC5),
    );
  }
}
