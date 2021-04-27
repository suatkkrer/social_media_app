import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/postCard.dart';

class ProfilePage extends StatelessWidget {

  final String nameSurname;
  final String username;
  final String themeLink;
  final String profileLink;

  ProfilePage(
      this.nameSurname, this.username, this.themeLink, this.profileLink);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
              //  color: Colors.yellow,
              ),
              Container(
                height: 180.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                            themeLink),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: username,
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(width: 2.0, color: Colors.white),
                        image: DecorationImage(
                            image: NetworkImage(
                                profileLink),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      nameSurname,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      username,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                      border: Border.all(width: 2.0, color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context); //"l;'kl;'k");
                  })
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                followerColumn("Followers","20K"),
                followerColumn("Followed","500"),
                followerColumn("Posts","76")
              ],
            ),
          ),
          postCard("https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "sfdasdf",
              "sfasfdas",
              "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
              "asfdasdfasfd")
        ]));
  }

  Column followerColumn(String title, String number) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 1.0,),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                    ),
                  )
                ],
              );
  }
}
