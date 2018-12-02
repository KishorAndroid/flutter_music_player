import 'package:flutter/material.dart';
import 'package:music_player/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            color: Colors.grey,
            onPressed: () {}),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu), color: Colors.grey, onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
          //Seek bar
          new Expanded(
            child: new Container(),
          ),

          //Visualizer
          new Container(
            width: double.infinity,
            height: 125.0,
          ),

          //Controls
          new Container(
            color: accentColor,
            child: new Padding(
              padding: const EdgeInsets.all(40.0),
              child: new Column(
                children: <Widget>[
                  new RichText(
                    text: new TextSpan(text: '', children: [
                      new TextSpan(
                          text: "Song Title\n",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4.0,
                            height: 1.5,
                          )),
                      new TextSpan(
                          text: "Artist Name",
                          style: new TextStyle(
                            color: Colors.white.withOpacity(0.75),
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3.0,
                            height: 1.5,
                          )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(child: new Container()),
                        new IconButton(
                            icon: new Icon(Icons.skip_previous,
                                color: Colors.white, size: 24.0),
                            onPressed: () {}),
                        new Expanded(child: new Container()),
                        new RawMaterialButton(
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          splashColor: lightAccentColor,
                          highlightColor: lightAccentColor.withOpacity(0.50),
                          elevation: 16.0,
                          highlightElevation: 5.0,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: new Icon(
                              Icons.play_arrow,
                              color: darkAccentColor,
                              size: 48.0,
                            ),
                          ),
                        ),
                        new Expanded(child: new Container()),
                        new IconButton(
                            icon: new Icon(Icons.skip_next,
                                color: Colors.white, size: 24.0),
                            onPressed: () {}),
                        new Expanded(child: new Container()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
