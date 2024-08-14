import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Example App'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;
  double _fontSize = 0;

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter == 0;
        final snackBar = SnackBar(
          content: const Text('Hayoh weh dikurangan'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        _counter--;
        _fontSize = _fontSize > 0 ? _fontSize - 1 : 0;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (_counter >= 50){
        final snackBar = SnackBar(
          content: const Text('Terus weh ditambahan'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        _counter++;
        _fontSize = _fontSize < 50 ? _fontSize + 1 : 50;
      }
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
             style: TextStyle(fontSize: _fontSize),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      ),
      const SizedBox(width: 10),
        FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        ),
        ],
      )
    );
  }
}
