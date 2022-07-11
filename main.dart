import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void incremntcounter (){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUTTONS'),
        actions: <Widget>[  
          IconButton(icon: Icon(Icons.camera), onPressed: () => {}),  
          IconButton(icon: Icon(Icons.account_balance), onPressed: () => {})  
        ],
        ),
      body: 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('3 types of buttons',style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: incremntcounter, 
              child: Icon(Icons.add)),
            const SizedBox(height: 20,),
            FloatingActionButton(
              child: Icon(Icons.navigation),  
              backgroundColor: Color.fromARGB(255, 240, 68, 140),  
              foregroundColor: Colors.white,
              onPressed: () => {}, ),
            const SizedBox(height: 20,),
            FloatingActionButton.extended(
              onPressed: incremntcounter,
              icon: Icon(Icons.save),
              backgroundColor: Color.fromARGB(255, 35, 235, 225), 
              label: Text('save'),
              )
            ],
        ),
      ),
    );
  }
}