import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  const InputField({@required Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }
}
