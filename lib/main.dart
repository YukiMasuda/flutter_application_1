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
  void _incrementCounter_Japan() { //日本のゴール
    setState(() {
      _counterJapan++;
    });
  }
void _offSideDelay_Japan() { //日本のオフサイドディレイ
    setState(() {
      _counterJapan--;
    });
}
void _offSideDelay_Croatia() { //クロアチアのオフサイドディレイ
    setState(() {
      _counterCroatia--;
    });
}

void _incrementCounter_Croatia() { //クロアチアのゴール
  setState(() {
    _counterCroatia++;
  });
}
void _nationalFlag(){ //背景色を変える
  if (_counterJapan > _counterCroatia){
        print('japan');
      } else if (_counterJapan > _counterCroatia){
        print('croatia');
      } else {
        print('draw');
      }
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
              'Japan VS Croatia',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              '$_counterJapan',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '-',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counterCroatia',
              style: Theme.of(context).textTheme.headline4,
            ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
