import 'package:flutter/material.dart';
import '../details.dart';
import './screen4.dart';

class Screen3 extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  String? _name;
  var _age;
  String? _education;
  String? _profession;
  String? _gender;
  var _details = Details(
    age: '0',
    education: '',
    gender: '',
    name: '',
  );
  // const Screen3({Key? key}) : super(key: key);
  void _saveform() {
    final valid = _formkey.currentState!.validate();
    if (!valid) {
      return;
    }
    _formkey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: Center(
                child: Form(
                    key: _formkey,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'NAME',
                          ),
                          onSaved: (value) {
                            _details.name = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) return 'Please enter NAME';
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(labelText: 'AGE'),
                          onSaved: (value) {
                            _details.age = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) return 'Please enter AGE';
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(labelText: 'EDUCATION'),
                          onSaved: (value) {
                            _details.education = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) return 'Please enter a Value';
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(labelText: 'PROFESSION'),
                          onSaved: (value) {
                            _details.profession = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'Please enter PROFESSION';
                          },
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(labelText: 'GENDER'),
                          onSaved: (value) {
                            _details.gender = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) return 'Please enter GENDER';
                          },
                          onFieldSubmitted: (_) {
                            _saveform();
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next',
                                textScaleFactor: 1.2,
                              ),
                              // ignore: prefer_const_constructors
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => Mobileno()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
          ),
        ),
        //  floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
