import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
   
    void increment(){
      counter++;
      setState(() {
        
      });
    }

    void decrement(){
      counter--;
      setState(() {
        
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      drawer: Drawer(),//Opciones de menu
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Presione aqui", style: TextStyle(fontSize: 16.0),),
            Text("$counter", style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: 
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          FloatingActionButton(
            child: Icon(Icons.minimize_outlined),
            onPressed: () {
              decrement();
            },
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              increment();
            },
          ),
        ],)
      );
  }
}