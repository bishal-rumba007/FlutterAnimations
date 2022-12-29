import 'package:cool_stuff/view/cupertino_datePicker.dart';
import 'package:cool_stuff/view/androidDate_picker.dart';
import 'package:flutter/material.dart';

class DatePage extends StatelessWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Center(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DatePickerAndroid(),),);
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(140, 60)
                ),
                  child: const Text('Android Date Picker',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                    ),
                  ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DatePickerIos(),),);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size(140, 60)
                ),
                child: const Text('IOS Date Picker',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
