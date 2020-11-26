import 'package:slice_of_time/button_model.dart';
import 'package:slice_of_time/timer_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

// StateProviderをStateNotifierProviderに変更した。
// Providerはmodelはいらない。Controllerだけでよし。
final timerControllerProvider =
    StateNotifierProvider((_) => TimerModelController());
final buttonControllerProvider =
    StateNotifierProvider((_) => ButtonModelController());
//final modelProvider = StateNotifierProvider((_) => TimerModel());

class TimerView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // useProviderをbuild内に移動した
    final timerState = useProvider(timerControllerProvider.state);
    final timerController = useProvider(timerControllerProvider);

    //final buttonState = useProvider(buttonControllerProvider.state);
    //final buttonController = useProvider(buttonControllerProvider);

    // カウントがバラバラだっらのが、以下の処理をモデルのコントローラーに移動したら正常に時を刻み出した。
    // Timer.periodic(Duration(seconds: 1), (timer) => {timerController.onTimer()});
    //var dateFormat = DateFormat('mm:ss');
    String mm = (timerState.count ~/ 60).toString().padLeft(2, '0');
    String ss = (timerState.count % 60).toString().padLeft(2, '0');
    // ERROR: A build function returned null. => add 'return'
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              timerState.isDone ? 'time is done' : 'Hello',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: timerState.count.isOdd
                      ? Color(0xFFD50000)
                      : Color(0xFF1A237E)),
            ),
            Text(
              '$mm:$ss',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.brown,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                timerState.isDone
                    ? RaisedButton(
                        onPressed: () => {
                          timerController.addTime(),
                          timerController.onTimer()
                        },
                        color: Color(0xFF607D8B),
                        child: Text('add 3'),
                      )
                    : timerState.isStop
                        ? RaisedButton(
                            onPressed: () => timerController.onTimer(),
                            color: Color(0xFFCDDC39),
                            child: Text('start'),
                          )
                        : RaisedButton(
                            onPressed: () => timerController.stopTime(),
                            color: Color(0xFFFF5722),
                            child: Text('stop'),
                          ),
                /* instace of 'error'によりだめ。理想はこれ
                timerState.isDone
                    ? addButton(timerController.addTime())
                    : timerState.isStop
                        ? startButton(timerController.onTimer())
                        : stopButton(timerController.stopTime()),

                button_model
                Widget startButton(action) => RaisedButton(
                      onPressed: () => action,
                      color: Color(0xFFCDDC39),
                      child: Text('start'),
                    );
                */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
