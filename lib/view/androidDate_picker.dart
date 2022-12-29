import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DatePickerAndroid extends StatefulWidget {
  const DatePickerAndroid({Key? key}) : super(key: key);

  @override
  State<DatePickerAndroid> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerAndroid> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker(){
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
                Text(_dateTime.toString(), style: const TextStyle(fontSize: 20),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                ElevatedButton(
                    onPressed: _showDatePicker,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size(120, 50),
                    elevation: 5
                  ),
                    child: const Text('Pick Date'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
