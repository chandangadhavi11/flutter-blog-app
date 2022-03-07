import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Color.fromRGBO(249, 250, 250, 1),
          body: Container(
            child: ListView(
              children: [TopHeading(), SearchBar(), MainBlogInfoBox()],
            ),
          ),
        ));
  }
}

class TopHeading extends StatelessWidget {
  const TopHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('Blogs',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600)),
            Text("My Times",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(156, 156, 156, 1))),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 52,
        margin: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          color: Color.fromRGBO(249, 250, 250, 1),
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border(
              top: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              left: BorderSide(width: 2),
              right: BorderSide(width: 2)),
          boxShadow: [
            BoxShadow(
              color: Color(
                0x1e000000,
              ),
              offset: Offset(
                0,
                6,
              ),
              blurRadius: 16,
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              left: 24,
              right: 8,
              top: 10,
            ),
            hintText: "Search for Blogs",
            hintStyle:
                TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400),
            border: InputBorder.none,
            suffixIcon: Container(
                margin: EdgeInsets.only(right: 1, top: 3, bottom: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xff000000,
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )),
          ),
        ),
      ),
    );
  }
}

class MainBlogInfoBox extends StatelessWidget {
  const MainBlogInfoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        child: Container(
          height: 200,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80"))),
          ),
        ));
  }
}
