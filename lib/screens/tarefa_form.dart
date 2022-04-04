import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarefaForm extends StatefulWidget {
  const TarefaForm({Key? key}) : super(key: key);

  @override
  State<TarefaForm> createState() => _TarefaFormState();
}

class _TarefaFormState extends State<TarefaForm> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  String data = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _tituloController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                hintText: 'Dê um titulo para sua tarefa',
                labelText: 'Título',
              ),
            ),
            const Padding(padding: EdgeInsets.all(6)),
            TextFormField(
              controller: _descricaoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                hintText: 'Coloque alguns detalhes sobre a tarefa',
                labelText: 'Descrição',
              ),
            ),
            TextButton(
              onPressed: () {
                showDatePicker(
                  context: (context),
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030),
                ).then((date) {
                  setState(() {
                    data = DateFormat('dd/MM/yyyy').format(date!).toString();
                  });
                });
              },
              child: const Text("Selecionar data"),
            ),
            Text(
              data.toString(),
              style: const TextStyle(fontSize: 24),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Salvar tarefa"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
