import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WriteView extends StatelessWidget {
  String viewText = '';

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
