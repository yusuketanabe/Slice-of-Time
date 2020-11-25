import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TaskModel {
  String task;
  Timestamp createdAt;
  Timestamp updatedAt;
  User user;
  DocumentReference reference;

  TaskModel(DocumentSnapshot doc) {
    this.reference = doc.reference;
    this.task = doc.data()['task'];
    this.createdAt = doc.data()['createdAt'];
    this.updatedAt = doc.data()['updatedAt'];
    this.user = doc.data()['user'];
  }
}
