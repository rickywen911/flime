import 'package:flutter/material.dart';
import 'package:flime/flime.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flime Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flime Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [_buildContainer(), _buildTextField()],
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: FlimeContainer(
          width: 200,
          height: 100,
          child: Center(
            child: Text("This is a Flime container"),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: FlimeTextField(
          width: 400,
          inputDecoration: const InputDecoration(
            hintText: "This is a Flim TextFiled",
          ),
        ),
      ),
    );
  }
}
