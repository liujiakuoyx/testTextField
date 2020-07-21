import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('TestTextField'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              maxLines: 5,
              minLines: 1,
              inputFormatters: [
                LengthLimitingTextInputFormatter(100),
              ],
              cursorColor: Color.fromRGBO(40, 194, 144, 0.7),
              scrollPadding: EdgeInsets.symmetric(vertical: 10),
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                  right: 4,
                ),
                hintText: '请输入消息',
                hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
