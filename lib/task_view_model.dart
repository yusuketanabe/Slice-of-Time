import 'package:five_minutes/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_view_model.freezed.dart';

@freezed
abstract class TaskViewModel with _$TaskViewModel {
  factory TaskViewModel({
    @Default([]) List<TaskModel> sortedTaskList,
  }) = _TaskViewModel;
}

class TaskViewModelController extends StateNotifier<TaskViewModel> {
  TaskViewModelController() : super(TaskViewModel());
  getTaskList() {
    final tasks = FirebaseFirestore.instance.collection('tasks').snapshots();
    tasks.listen((snapshot) {
      final docs = snapshot.docs;
      final taskList = docs.map((doc) => TaskModel(doc)).toList();
      taskList.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      state = state.copyWith(sortedTaskList: taskList);
    });
  }
}
