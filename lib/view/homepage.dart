// ignore_for_file: unused_local_variable

import 'dart:math';
import 'package:bookapp/model/booksData.dart';
import 'package:bookapp/model/secondbooks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context)
        .size
        .height; //This is used to take the full height of the device
    final width = MediaQuery.of(context)
        .size
        .width; //This is used to take the full width of the device
    final actualHeight = height -
        MediaQuery.of(context)
            .padding
            .top; //If we don't want full height then can use this or SafeArea is used

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search),
              iconSize: 19),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
        ],
        title: Text(
          'Hello Stranger❤️,',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/book.png'),
                        fit: BoxFit.fill)),
                child: Text('')),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: sqrt1_2,
                    decorationColor: Colors.red,
                    fontSize: 30),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Saved',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: sqrt1_2,
                    fontSize: 30),
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                'More',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: sqrt1_2,
                    fontSize: 30),
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                'Help?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: sqrt1_2,
                    fontSize: 30),
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), label: 'Account'),
      ]),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 40),
            color: Color(0xff026F86),
            height: actualHeight * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Your',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 26,
                  ),
                  child: Text(
                    'bookshelf',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.blueAccent,
            height: actualHeight * 0.33,
            child: ListView.builder(
                itemCount: booksData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 5),
                    padding: index == 0 ? EdgeInsets.only(left: 2) : null,
                    width: 400,
                    child: Row(
                      children: [
                        Expanded(
                            child: Card(
                          child: Column(
                            children: [
                              Text(
                                booksData[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: [
                                  Image.network(
                                    booksData[index].imageUrl,
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.red),
                                child: Text(
                                  booksData[index].genre,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              Text(booksData[index].rating),
                            ],
                          ),
                        )),
                        SizedBox(width: 10),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text(booksData[index].detail),
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.blueAccent,
            height: actualHeight * 0.33,
            child: ListView.builder(
                itemCount: bookssData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 5),
                    padding: index == 0 ? EdgeInsets.only(left: 2) : null,
                    width: 400,
                    child: Row(
                      children: [
                        Expanded(
                            child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  bookssData[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Image.asset(
                                bookssData[index].imageUrl,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.red),
                                child: Text(
                                  bookssData[index].genre,
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                              Text(bookssData[index].rating),
                            ],
                          ),
                        )),
                        SizedBox(width: 10),
                        Expanded(
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text(bookssData[index].detail),
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
