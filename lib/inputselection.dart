import 'package:flutter/material.dart';

class Inputselection extends StatefulWidget {
  const Inputselection({super.key});

  @override
  State<Inputselection> createState() => _InputselectionState();
}

class _InputselectionState extends State<Inputselection> {
  TextEditingController nama = TextEditingController();
  var nama_lengkap = '';
  get_nama() {
    setState(() {
      nama_lengkap = nama.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(50),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: nama,
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Input Nama",
            ),
          ),
          Text(nama_lengkap),
          Container(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                get_nama();
              },
              child: Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
