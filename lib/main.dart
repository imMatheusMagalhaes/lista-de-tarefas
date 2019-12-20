import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

void main() => runApp(MaterialApp(
    title: 'Lista de Tarefas',
    home: Home(),
    theme: ThemeData(
      primaryColor: Colors.green,
    )));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.all(100),
            child: Text('Lista de Tarefas', style: TextStyle(fontSize: 25)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(flex: 3, 
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
              Expanded(
                child: ButtonTheme(
                  height: 60,
                  child: RaisedButton(
                    color: Colors.green,
                    child: Text('Add',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Future<File> _getFile() async {
  final diretorio = await getApplicationDocumentsDirectory();
  return File("${diretorio}");
}
