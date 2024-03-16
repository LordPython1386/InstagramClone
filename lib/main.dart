import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SearchPage.dart';
import 'Profile.dart';

void main() => runApp(MyApp());

int currentPage = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    if (currentPage == 4) {
      return Scaffold(
        body: Profile(),
        bottomNavigationBar: BottomAppBar(
            child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(Icons.home),
                color: currentPage == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1)),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(Icons.search),
                color: currentPage == 1
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1)),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(Icons.ondemand_video),
                color: currentPage == 2
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1)),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(Icons.card_travel),
                color: currentPage == 3
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1)),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(Icons.person),
                color: currentPage == 4
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1)),
          ],
        )),
      );
    }
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : HomePage(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(Icons.home),
              color: currentPage == 0
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1)),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(Icons.search),
              color: currentPage == 1
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1)),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              icon: Icon(Icons.ondemand_video),
              color: currentPage == 2
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1)),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              icon: Icon(Icons.card_travel),
              color: currentPage == 3
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1)),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              icon: Icon(Icons.person),
              color: currentPage == 4
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Color.fromRGBO(40, 40, 40, 1)),
        ],
      )),
    );
  }
}
