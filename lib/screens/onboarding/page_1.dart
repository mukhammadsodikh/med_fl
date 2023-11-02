import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late int selectedIdentity;

  @override
  void initState() {
    super.initState();
    selectedIdentity = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text('Kim sifatida kirmoqchisiz',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                )),
           const SizedBox(height: 30,),
            RadioListTile(
              title: Text('Duxtir'),
              value: 1,
              groupValue: selectedIdentity,
              onChanged: (value) {
                setState(() {
                  selectedIdentity = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Amaliyotchi'),
              value: 2,
              groupValue: selectedIdentity,
              onChanged: (value) {
                setState(() {
                  selectedIdentity = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Kasal'),
              value: 3,
              groupValue: selectedIdentity,
              onChanged: (value) {
                setState(() {
                  selectedIdentity = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}