class Tarefa{
  final int id;
  final String titulo;
  final String descricao;
  final DateTime data;
  bool finalizada;

  Tarefa(this.titulo, this.descricao, this.data, this.id, this.finalizada);

  @override
  String toString(){
    return 'Contato{id: $id, titulo: $titulo, descricao: $descricao, data: $data, finalizada: $finalizada}';
  }
}

