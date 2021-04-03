import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final IconData icon;
  final String hint;
  final bool obscure;
  final Stream<String> stream;
  final Function(String) onChanged;

  InputField({this.icon, this.hint, this.obscure, this.stream, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(icon, color: Theme.of(context).accentColor,),
            hintText: hint,
            hintStyle: TextStyle(color: Color.fromARGB(255, 74, 101, 114)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor,)
            ),
            contentPadding: EdgeInsets.only(left: 5, right: 30, bottom: 10, top: 10),
            errorText: snapshot.hasError ? snapshot.error : null,
          ),
          style: TextStyle(color: Colors.white),
          obscureText: obscure,
          cursorColor: Color.fromARGB(255, 74, 101, 114),
        );
      }
    );
  }
}
