import 'package:flutter/material.dart';
import 'package:flutter_application_4/ListView.dart';
import 'package:flutter_application_4/Stack.dart';
import 'package:flutter_application_4/dateandtimepicker.dart';
import 'package:flutter_application_4/dialog.dart';
import 'package:flutter_application_4/image_widget.dart';
import 'package:flutter_application_4/ovo.dart';
import 'package:flutter_application_4/scaffold.dart';
import 'package:flutter_application_4/tesScaffold.dart';
import 'package:flutter_application_4/text_widget.dart';
import 'package:flutter_application_4/tugasakhir.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Ovo(),
    );
  }
}
