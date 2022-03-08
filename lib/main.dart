import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
class Data{
  int blogViews;
  String blogTitle;
  String blogImageUrl;
  String blogAuthor;
  Data({required this.blogViews, required this.blogTitle, required this.blogAuthor, required this.blogImageUrl});

}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const int number = 10;
    const String b1Image = "https://images.unsplash.com/photo-1640622659208-98d70201f2da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80";
    const String b2Image = "https://images.unsplash.com/photo-1646298106353-2c5ffcd8f33e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80";
    const String b3Image = "https://images.unsplash.com/photo-1646265780630-b639fcc8fc28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80";
    
    Data d1 = Data(blogViews: 1200, blogTitle: "What Did I Learned ?", blogAuthor: "Random Person", blogImageUrl: "https://images.unsplash.com/photo-1640622659208-98d70201f2da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80");
    Data d2 = Data(blogViews: 1200, blogTitle: "Interior Design that will make your home look better", blogAuthor: "Another Person", blogImageUrl: "https://images.unsplash.com/photo-1646298106353-2c5ffcd8f33e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80");
    Data d3 = Data(blogViews: 1200, blogTitle: "Are young children more stressed ?", blogAuthor: "Another Random Person", blogImageUrl: "https://images.unsplash.com/photo-1646265780630-b639fcc8fc28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80");


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
              children: [
                TopHeading(),
                SearchBar(),
                Column(
                  children: [
                    MainBlogInfoBox(data: d1),
                    SizedBox(height: 16),
                    MainBlogInfoBox(data: d2),
                    SizedBox(height: 16),
                    MainBlogInfoBox(data: d3),

                  ],
                )
              ],
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
      margin: EdgeInsets.only(top: 32, bottom: 32),
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
      margin: EdgeInsets.only(bottom: 32),
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
  const MainBlogInfoBox({Key? key, required this.data}) : super(key: key);

  final Data data;
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
                    image: NetworkImage(this.data.blogImageUrl))),
            child: Stack(
              children: [
                FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
                        color: Color(
                          0x66000000,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            child: Icon(
                              Icons.airplanemode_active_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6, left: 8, top: 5, bottom: 5),
                            child: Text(
                              "1.2k+",
                              style: TextStyle(
                                color: Color(
                                  0xe5ffffff,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                                letterSpacing: 0.08,
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: FittedBox(
                        fit: BoxFit.fitHeight,

                        // margin: EdgeInsets.only(left: 16),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 16, left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                this.data.blogTitle.length > 30 ? this.data.blogTitle.substring(0, 30)+'...' : this.data.blogTitle,
                                style: TextStyle(
                                  color: Color(
                                    0xffffffff,
                                  ),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      color: Color(
                                        0xffc4c4c4,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text(
                                      this.data.blogAuthor + " " + "• 2 hours ago",
                                      style: TextStyle(
                                        color: Color(
                                          0xffffffff,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}


