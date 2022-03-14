import 'package:flutter/material.dart';

class ListaTarefas extends StatefulWidget {
  const ListaTarefas({Key? key}) : super(key: key);

  @override
  State<ListaTarefas> createState() => _ListaTarefasState();
}

class _ListaTarefasState extends State<ListaTarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
      ),
      drawer: Drawer(),
      body: ListView(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  }, 
        child: Icon(Icons.add),
      ),
    );
  }
}