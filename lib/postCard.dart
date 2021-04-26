import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class postCard extends StatelessWidget {
  const postCard({
    Key key,
  }) : super(key: key);

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
            height: 380.0,
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
                                      "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name Surname",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "1 hour ago",
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
                  "Explanation",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.network(
                  "https://www.eagles.org/wp-content/uploads/2020/07/MG_6734-146-scaled.jpg",
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: <Widget>[
                    buttonWidget(Icons.favorite,"Like"),
                    buttonWidget(Icons.comment,"Comment"),
                    buttonWidget(Icons.share,"Share"),
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

  buttonWidget(this.myIcons,this.myButtonName);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                "Like",
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
