import 'package:firebase_auth/firebase_auth.dart';
import 'package:slice_of_time/task_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:state_notifier/state_notifier.dart';

part 'task_view_model.freezed.dart';

@freezed
abstract class TaskViewModel with _$TaskViewModel {
  factory TaskViewModel({
    @Default(['first', 'second']) List sortedTaskList,
  }) = _TaskViewModel;
}

class TaskViewModelController extends StateNotifier<TaskViewModel> {
  TaskViewModelController() : super(TaskViewModel());
  String user = FirebaseAuth.instance.currentUser.uid;
  getTaskList() async {
    final tasks = await FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .collection('tasks')
        .snapshots();
    tasks.listen((snapshot) {
      final docs = snapshot.docs;
      final taskList = docs.map((doc) => TaskModel(doc)).toList();
      taskList.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      state = state.copyWith(sortedTaskList: taskList);
    });
  }
}
