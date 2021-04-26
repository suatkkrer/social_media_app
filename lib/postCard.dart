import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class postCard extends StatelessWidget {

  final String profilePicUrl;
  final String nameSurname;
  final String time;
  final String postPicUrl;
  final String explanation;


  postCard(this.profilePicUrl, this.nameSurname, this.time, this.postPicUrl,
      this.explanation);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          elevation: 1.0,
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            height: 390.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.indigo,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    profilePicUrl
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nameSurname,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  explanation,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.network(
                  postPicUrl,
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buttonWidget(Icons.favorite,"Like",(){}),
                    buttonWidget(Icons.comment,"Comment",(){}),
                    FlatButton.icon(onPressed: (){}, icon: Icon(Icons.share,color: Colors.grey,), label: Text("Share",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),),)
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class buttonWidget extends StatelessWidget {

  final IconData myIcons;
  final String myButtonName;
  final myFunction;

  buttonWidget(this.myIcons,this.myButtonName, this.myFunction);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                myIcons,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                myButtonName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
