import 'package:flutter/material.dart';

class DateTimePicWid extends StatelessWidget {
  const DateTimePicWid({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: DaTiPiWid(title: 'Contoh Date Picker'),
    );
  }
}

class DaTiPiWid extends StatefulWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const DaTiPiWid({super.key, Key, required this.title});

  final String title;

  @override
  State<DaTiPiWid> createState() => _DaTiPiWidState();
}

class _DaTiPiWidState extends State<DaTiPiWid> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text('Pilih Tanggal'),
            )
          ],
        ),
      ),
    );
  }
}
