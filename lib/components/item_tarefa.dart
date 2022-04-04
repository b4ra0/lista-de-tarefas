import 'package:flutter/material.dart';
import 'package:lista_tarefas/model/tarefa.dart';

class ItemTarefa extends StatefulWidget {

  Tarefa tarefa;

  ItemTarefa(this.tarefa);

  @override
  State<ItemTarefa> createState() => _ItemTarefaState();
}

class _ItemTarefaState extends State<ItemTarefa> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.tarefa.titulo),
        subtitle: Text(widget.tarefa.descricao),
        trailing: Text(widget.tarefa.data.toString()),
        leading: Checkbox(value: widget.tarefa.finalizada, onChanged: (value) {
          setState(() {
            widget.tarefa.finalizada = value!;
          });
        },),
      ),
    );
  }
}
