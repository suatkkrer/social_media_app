import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'postCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {}),
        title: Text(
          "SocialWorld",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(
                    children: [
                      announcement("Alice Followed You","3 mins ago"),
                      announcement("Marta Commented Your Post","3 hours ago"),
                      announcement("John Followed You","3 days ago")
                    ],
                  );
                });
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 5.0)
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profileCard(
                  "John Ala",
                  "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  "John",
                  "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                profileCard(
                  "Michasdfael",
                  "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                  "Michael",
                  "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                profileCard(
                  "Michaasdffael",
                  "https://www.himalmag.com/wp-content/uploads/2019/07/sample-profile-picture.png",
                  "Jessica",
                  "https://www.himalmag.com/wp-content/uploads/2019/07/sample-profile-picture.png",
                ),
                profileCard(
                  "Michsfdaefl",
                  "https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
                  "Belma",
                  "https://data.whicdn.com/images/322027365/original.jpg?t=1541703413",
                ),
                profileCard(
                  "Michsafdaesl",
                  "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
                  "Clarke",
                  "https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg",
                ),
                profileCard(
                  "Micasdfhael",
                  "https://sugardaddyaustralia.org/images/profiles/bellamy-1525963049224.jpg",
                  "Maggie",
                  "https://sugardaddyaustralia.org/images/profiles/bellamy-1525963049224.jpg",
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          postCard(
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "sfdasdf",
              "sfasfdas",
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "asfdasdfasfd"),
          postCard(
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "sfdasdf",
              "sfasfdas",
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "asfdasdfasfd"),
          postCard(
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "sfdasdf",
              "sfasfdas",
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "asfdasdfasfd")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple[300],
        child: Icon(Icons.add_a_photo, color: Colors.white,),
      ),
    );
  }

  Padding announcement(String message, String time) {
    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(message, style: TextStyle(fontSize: 15.0),),
                          Text(time)
                        ],
                      ),
                    );
  }

  Widget profileCard(
      String username, String picLink, String nameSurname, String themeLink) {
    return Material(
      child: InkWell(
        onTap: () async {
          Future<dynamic> data = await Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (BuildContext context) =>
                      ProfilePage(nameSurname, username, themeLink, picLink)));
          //MaterialPageRoute
        //  print(data);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Hero(
                    tag: username,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(picLink), fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                username,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
