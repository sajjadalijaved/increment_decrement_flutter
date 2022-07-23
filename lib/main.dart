import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                    flex: 3,
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.indigo,
                    ),
                    flex: 3,
                    fit: FlexFit.loose,
                  )
                ],
              ),
              flex: 4,
            ),
            Expanded(
              child: Container(
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      'Count: $_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                color: Colors.yellow,
              ),
              flex: 7,
            ),
          ],
        )),
        drawer: Drawer(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
