// import 'package:bookapp/model/secondbooks1.dart';
// import 'package:flutter/material.dart';

// class DetailPages extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;

//     return SafeArea(
//       child: Scaffold(
//         body: ListView.builder(
//           itemCount: bookssdata1.length,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: EdgeInsets.only(top: height * .45),
//               child: Column(
//                 children: [
//                   Text(
//                     bookssdata1[index].detail,
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//         backgroundColor: Color(0xffF7BAC5),
//       ),
//     );
//   }
// }

import 'package:bookapp/model/secondbooks.dart';
import 'package:bookapp/view/moreinfopage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPages extends StatelessWidget {
  final Books book1;
  DetailPages(this.book1);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Image.asset(
                book1.imageUrl,
                height: height * .4,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          book1.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.red,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(
                                  book1.genre,
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 130),
                                  child: Text(book1.rating),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        book1.summary,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Read Book')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => MoreInfo());
                        },
                        child: Text('More Info')),
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Color(0xffF7BAC5),
      ),
    );
  }
}
