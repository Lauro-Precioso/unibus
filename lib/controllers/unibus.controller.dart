import '../models/unibus.model.dart';

class FaculdadeController {
  final tasks = [
    Task('Fatec'),
    Task('Unip'),
    Task('Unorp'),
    Task('Unirp'),
    Task('Unesp'),
    Task('Anhanguera'),
    Task('Cedu Verde'),
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
