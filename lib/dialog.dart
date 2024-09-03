import 'package:flutter/material.dart';

class DialogWid extends StatelessWidget {
  const DialogWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogWid(),
    );
  }
}

class LogWid extends StatefulWidget {
  const LogWid({super.key});

  @override
  State<LogWid> createState() => _LogWidState();
}

class _LogWidState extends State<LogWid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          child: const Text('Show Alert'),
          onPressed: () {
            showAlertDialog(context);
          }),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FloatingActionButton(
    child: const Text("ok"),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Title"),
    content: const Text("This is my message"),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
