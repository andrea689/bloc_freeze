import 'package:bloc_problem/bloc/custom_bloc.dart';
import 'package:bloc_problem/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => CustomBloc(),
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  int _counter = 0;
  final map1 = getMap();
  final map2 = getMap();
  bool isMap1 = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Try to scroll the page after click plus button',
              style: TextStyle(height: 20),
            ),
            Text(
              'Try to scroll the page after click plus button',
              style: TextStyle(height: 20),
            ),
            Text(
              'Try to scroll the page after click plus button',
              style: TextStyle(height: 20),
            ),
            Text(
              'Try to scroll the page after click plus button',
              style: TextStyle(height: 20),
            ),
            Text(
              'Try to scroll the page after click plus button',
              style: TextStyle(height: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isMap1) {
            context.bloc<CustomBloc>().add(MyEvent(map2));
            isMap1 = false;
          } else {
            context.bloc<CustomBloc>().add(MyEvent(map1));
            isMap1 = true;
          }
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
