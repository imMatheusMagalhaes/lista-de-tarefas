import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

void main() => runApp(MaterialApp(
    title: 'Lista de Tarefas',
    home: Home(),
    theme: ThemeData(primaryColor: Colors.blue)));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(21, 32, 43, 10),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Padding(
            padding: EdgeInsets.all(100),
            child: Text('Lista de Tarefas', style: TextStyle(fontSize: 25)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                      style: TextStyle(fontSize: 20, color: Colors.blue)
                    ),
                  )),
              Expanded(
                child: ButtonTheme(
                  height: 63,
                  child: RaisedButton(
                    color: Colors.blue,
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
