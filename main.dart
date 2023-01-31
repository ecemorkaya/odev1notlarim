import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp() {
   print('myapp yaratılıyor');
 }


  @override
  Widget build(BuildContext context) {
   print('myapp build');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Demo Uygulama'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              print("remove");
            },
          ),
          Icon(Icons.add),
        ],
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Üzgünüm ama daha fazla basma:',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed:() {
                print('BunaBas pressed');
                _incrementCounter();
              },
              child: Text(
                'Buna bas'
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
            label: 'bir'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'iki'
          ),
        ],
      )
    );
  }
}
