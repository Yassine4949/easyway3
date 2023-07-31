import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {

  @override

  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String _selectedOption = 'rate';
  List<String> _options = [
    'rate',
    'price',
    'distance',
    'stars',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
          items: _options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          hint: Text('Select an option'),
        ),
      ],
    );
  }
}
