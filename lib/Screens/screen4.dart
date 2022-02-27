import 'package:flutter/material.dart';

class Mobileno extends StatelessWidget {
  Mobileno({Key? key}) : super(key: key);
  var _mob;

  @override
  Widget build(BuildContext context) {
    var _mobconmtroller = TextEditingController();
    return Scaffold(
        body: Center(
      child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * .067),
          child: TextField(
            keyboardType: TextInputType.number,
            onChanged: (v) {
              _mob = v;
              print(v);
            },
            decoration: InputDecoration(
              label: Text('MOBILE NO.'),
            ),
          )),
    ));
  }
}
