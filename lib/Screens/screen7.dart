import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LoggedInS7 extends StatefulWidget {
  const LoggedInS7({Key? key}) : super(key: key);

  @override
  _LoggedInS7State createState() => _LoggedInS7State();
}

class _LoggedInS7State extends State<LoggedInS7> {
  final ImagePicker _picker = ImagePicker();
  XFile? clicked = null;
  File? image = null;
  var name = 'NAME';
  var age = 'AGE';
  var profession = 'PROFESSION';
  var gender = 'Gender';

  void _clickImage() async {
    clicked = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = File(clicked!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: h.height * 0.15,
            bottom: h.height * 0.15,
            right: h.width * 0.1,
            left: h.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _clickImage,
                  child: Container(
                    child: image == null
                        ? Center(
                            child: Container(
                                padding: EdgeInsets.all(h.width * 0.08),
                                child: Text('CLick Here to Take A Picture')),
                          )
                        : Image.file(image!, fit: BoxFit.fill),
                    height: h.height * 0.3,
                    width: h.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(width: 1),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(name),
                    SizedBox(
                      height: h.height * 0.02,
                    ),
                    Text(age),
                    SizedBox(
                      height: h.height * 0.02,
                    ),
                    Text(gender),
                    SizedBox(
                      height: h.height * 0.02,
                    ),
                    Text(profession),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'CLICK HERE SEE YOUR PPDT',
                textScaleFactor: 1.2,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'START PPDT',
                textScaleFactor: 1.2,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "SEE OTHER'S PPDT",
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
