import '../models/unibus.model.dart';

class FaculdadeController {
  final tasks = [
    Task('Fatec', false),
    Task('Unip', false),
    Task('Unorp', false),
    Task('Unirp', false),
    Task('Unesp', false),
    Task('Anhanguera', false),
    Task('Cedu Verde', false),
  ];

  void Create(Task task) {
    tasks.add(task);
  }

  List<Task> read() {
    return tasks;
  }

  void update(Task task) {}

  void delete(Task task) {}
}
