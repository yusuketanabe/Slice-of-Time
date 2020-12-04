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
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                'やること',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) {
                return taskState.sortedTaskList == null
                    ? Container()
                    : i.isOdd
                        ? _buildCardOdd(taskState.sortedTaskList[i], size)
                        : _buildCardEven(taskState.sortedTaskList[i], size);
              },
              childCount: taskState.sortedTaskList == null
                  ? 0
                  : taskState.sortedTaskList.length,
            ),
          ),
        ],
      ),
      floatingActionButton: MyButton(),
    );
  }

  Widget _buildCardOdd(TaskModel task, Size size) => Card(
        margin: EdgeInsets.symmetric(vertical: 3.0),
        color: Colors.amber,
        child: Container(
          width: size.width,
          height: size.height / 9,
          child: Text(task.task),
        ),
      );

  Widget _buildCardEven(TaskModel task, Size size) => Card(
        margin: EdgeInsets.symmetric(vertical: 3.0),
        child: Container(
          width: size.width,
          height: size.height / 9,
          child: Text(task.task),
        ),
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
