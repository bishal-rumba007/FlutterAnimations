import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerIos extends StatefulWidget {
  const DatePickerIos({Key? key}) : super(key: key);

  @override
  State<DatePickerIos> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerIos> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2030),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Date picking Widget'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  _dateTime.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                      use24hFormat: true,
                      initialDateTime: _dateTime,
                      minimumYear: 1950,
                      maximumYear: 2030,
                      onDateTimeChanged: (val) {
                        setState(
                          () {
                            _dateTime = val!;
                          },
                        );
                      },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
