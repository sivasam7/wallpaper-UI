import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TextStyle(
      fontSize: 20,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          leading: Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(35),
                  )),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      'Set ',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      'Your ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70),
                    ),
                  ]),
                  SizedBox(
                    height: 7,
                  ),
                  Text('Walpaper',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search Your Whalpaper',
                          hintStyle:
                              TextStyle(color: Colors.grey[800], fontSize: 14),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Top Whalpapers',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        whalpaper('assets/images/seven.jpg'),
                        whalpaper('assets/images/two.jpg'),
                        whalpaper('assets/images/three.jpg'),
                        whalpaper('assets/images/four.jpg'),
                        whalpaper('assets/images/five.jpg'),
                        whalpaper('assets/images/six.jpg'),
                        whalpaper('assets/images/one.jpg'),
                        whalpaper('assets/images/sevn.jpg'),
                        whalpaper('assets/images/eight.jpg'),
                        whalpaper('assets/images/nine.jpg'),
                        whalpaper('assets/images/ten.jpg'),
                        whalpaper('assets/images/twelve.jpg'),
                        whalpaper('assets/images/thirteen.jpg'),
                        whalpaper('assets/images/eleven.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        whalpaper2('assets/images/11.jpg'),
                        whalpaper2('assets/images/9.jpg'),
                        whalpaper2('assets/images/10.jpg'),
                        whalpaper2('assets/images/12.jpg')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Widget whalpaper(image) {
    return AspectRatio(
      aspectRatio: 2.1 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
    );
  }

  Widget whalpaper2(image) {
    return AspectRatio(
        aspectRatio: 10 / 6,
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
        ));
  }
}
