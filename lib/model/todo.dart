class ToDo {
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todosList() {
    return [
      ToDo(id: '01', todoText: 'Learn React Native', isDone: true),
      ToDo(id: '02', todoText: 'Learn Dart'),
      ToDo(id: '03', todoText: 'Learn Flutter'),
      ToDo(id: '04', todoText: 'Learn JS', isDone: true),
    ];
  }

}
