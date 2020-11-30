import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:slice_of_time/login_view.dart';
import 'package:slice_of_time/task_view.dart';
import 'package:slice_of_time/timer_view.dart';

import 'package:slice_of_time/user.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuthProvider = StreamProvider.autoDispose((ref) => FirebaseAuth
    .instance
    .authStateChanges()
    .map((user) => UserState(data: user)));

Future<void> main() async {
  // main()関数内で非同期処理をする際に、その前で以下の処理をする。でないとエラーが出る。
  WidgetsFlutterBinding.ensureInitialized();
  // package 'firebase_core'をバージョンアップ(0.5.0以上)した際に、最初に初期化処理をしないといけなくなった。
  await Firebase.initializeApp();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<UserState> user = watch(firebaseAuthProvider);
    return user.when(
      data: (user) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: user.data != null ? TaskView() : LoginView(),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: Text(
            'Error: $err',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
