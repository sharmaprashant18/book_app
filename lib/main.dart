import 'package:bookapp/view/homepage.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(Home());
// }
void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
