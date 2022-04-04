import 'package:flutter/material.dart';
import 'package:lista_tarefas/components/item_tarefa.dart';
import 'package:lista_tarefas/model/tarefa.dart';
import 'package:lista_tarefas/screens/tarefa_form.dart';

class ListaTarefas extends StatefulWidget {
  const ListaTarefas({Key? key}) : super(key: key);

  @override
  State<ListaTarefas> createState() => _ListaTarefasState();
}

class _ListaTarefasState extends State<ListaTarefas> {
  List<Tarefa> tarefas = [Tarefa("Fazer tarefa", "Alguma descrição bem aleatória mesmo", DateTime.now(), 5, false)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de tarefas"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text("Por fazer"),
                ),
                const PopupMenuItem(
                  child: Text("Finalizadas"),
                ),
                const PopupMenuItem(
                  child: Text("Todas"),
                ),
              ];
            },
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
      drawer: const Drawer(),
      body: FutureBuilder<List<Tarefa>>(
        builder: (context, snapshot) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final Tarefa tarefa = tarefas[index];
              return ItemTarefa(tarefa);
            },
            itemCount: tarefas.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const TarefaForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
