import 'package:slice_of_time/task_model.dart';
import 'package:slice_of_time/task_view_model.dart';
import 'package:slice_of_time/write_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final taskViewControllerProvider =
    StateNotifierProvider((_) => TaskViewModelController()..getTaskList());

class TaskView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final taskState = useProvider(taskViewControllerProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text('やること'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd)
            return Divider(
              color: Colors.black,
              height: 4,
            );
          return _buildRow(taskState.sortedTaskList[i]);
        },
        itemCount: taskState.sortedTaskList.length,
      ),
      floatingActionButton: MyButton(),
    );
  }

  Widget _buildRow(TaskModel task) => ListTile(
        title: Text(task.task),
      );
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WriteView(),
        ),
      ),
      child: Icon(Icons.add),
      backgroundColor: Colors.lime,
    );
  }
}
