import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: WidgetPavlova(),
          ),
        ));
  }
}

class WidgetPavlova extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 400,
        width: 840,
        child: Card(
          //color: Colors.pinkAccent,
          elevation: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    width: 440,
                    child: LeftColumn()),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                  height: 300,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2016/06/20/23/50/mixed-berries-1470228_960_720.jpg"),
                ),
              )
            ],
          ),
        ));
  }
}

//widget del lado izquierdo
class LeftColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Strawberry Pavlova",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          WidgetStars(),
          IconList(),
        ],
      ),
    );
  }
}

class WidgetStars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.purpleAccent),
              Icon(Icons.star, color: Colors.purpleAccent),
              Icon(Icons.star, color: Colors.purpleAccent),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
          Text(
            '170 Reviews',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              letterSpacing:0.5
            ),
          )
        ],
      ),
    );
  }
}

//widgets icons list
class IconList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.purpleAccent),
              Text("PREP:"),
              Text("25 min"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.purpleAccent),
              Text("COOK:"),
              Text("1 hr"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.purpleAccent),
              Text("FEEDS:"),
              Text("4-6"),
            ],
          ),
        ],
      ),
    );
  }
}
