import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FIFA WORLD CUP QATAR 2022'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterJapan = 0;
  int _counterCroatia = 0;
  void _incrementCounter_Japan() {
    setState(() {
      _counterJapan++;
    });
  }
void _incrementCounter_Croatia() {
    setState(() {
      _counterCroatia++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Which will be the winner?',
            ),
            const Text(
              'Japan VS Spain',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$_counterJapan',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counterCroatia',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            heroTag: 'Japan',
            onPressed: _incrementCounter_Japan,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'Croatia',
            onPressed: _incrementCounter_Croatia,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
