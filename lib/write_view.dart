import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slice_of_time/task_view_model.dart';

final taskViewControllerProvider =
    StateNotifierProvider((_) => TaskViewModelController());

class WriteView extends HookWidget {
  String viewText = '';
  final taskController = useProvider(taskViewControllerProvider);

  String user = FirebaseAuth.instance.currentUser.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク追加'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'タスク',
              ),
              onChanged: (text) => viewText = text,
            ),
            FlatButton(
              onPressed: () async {
                await addTask();
                //taskController.getTaskList();
                Navigator.pop(context);
              },
              child: Text('add'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> addTask() {
    CollectionReference tasks =
        FirebaseFirestore.instance.collection(user).doc().collection('tasks');
    return tasks
        .add({
          'task': viewText,
          'createdAt': Timestamp.now(),
          'updatedAt': Timestamp.now(),
          'user': user.toString(),
        })
        .then((value) => print("Task Added"))
        .catchError((error) => print('Failed to add task: $error'));
  }
}
