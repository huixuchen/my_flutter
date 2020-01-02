import 'package:flutter/material.dart';
import 'package:flutter_demo/constant.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titleText = new Text(
      'Strawberry Pavlova',
      style: Constants.my_style_black_big_font,
    );

    Widget textSection = new Container(
//      padding: const EdgeInsets.all(.0),
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. 
        ''',
        softWrap: true,
      ),
    );

    var ratings = new Container(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red,
                size: 15,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
                size: 15,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
                size: 15,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
                size: 15,
              ),
              new Icon(
                Icons.star,
                color: Colors.red,
                size: 15,
              ),
            ],
          ),
          new Text('170 Reviews', style: Constants.my_style_black_font)
        ],
      ),
    );

    var iconList = DefaultTextStyle.merge(
        style: Constants.my_style_black_small_font,
        child: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                    size: 15,
                  ),
                  new Text(
                    'PREP:',
                    style: new TextStyle(fontSize: 15),
                  ),
                  new Text(
                    '25 min',
                    style: new TextStyle(fontSize: 15),
                  )
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.timer,
                    color: Colors.green[500],
                    size: 15,
                  ),
                  new Text(
                    'COOK:',
                    style: new TextStyle(fontSize: 15),
                  ),
                  new Text(
                    '1 hr',
                    style: new TextStyle(fontSize: 15),
                  )
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.restaurant,
                    color: Colors.green[500],
                    size: 15,
                  ),
                  new Text(
                    'FEEDS:',
                    style: new TextStyle(fontSize: 15),
                  ),
                  new Text(
                    '4-6',
                    style: new TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ));

    var rightImg = new Image.asset('resource/images/2.jpeg', width: 100);

    var leftColum = new Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        width: 300,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[titleText, textSection, ratings, iconList],
        ));

    var img = new Image.asset(
      'resource/images/timg.jpg',
      width: 400,
      height: 200,
    );

    return new MaterialApp(
        title: 'hello world',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('test'),
          ),
          body: new Center(
            child: new Container(
              margin: new EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            child: leftColum,
                            width: 250,
                          ),
                          rightImg
                        ],
                      ),
                    ),
                    img
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
