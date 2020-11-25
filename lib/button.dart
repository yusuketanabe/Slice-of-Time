import 'package:flutter/material.dart';

Widget startButton(action) => RaisedButton(
      onPressed: () => action,
      color: Color(0xFFCDDC39),
      child: Text('start'),
    );

Widget stopButton(action) => RaisedButton(
      onPressed: () => action,
      color: Color(0xFFFF5722),
      child: Text('stop'),
    );

Widget addButton(action) => RaisedButton(
      onPressed: () => action,
      color: Color(0xFF607D8B),
      child: Text('add 3'),
    );
