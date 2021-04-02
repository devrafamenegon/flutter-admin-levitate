import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final IconData icon;
  final String hint;
  final bool obscure;

  InputField({this.icon, this.hint, this.obscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(icon, color: Color.fromARGB(255, 74, 101, 114),),
        hintText: hint,
        hintStyle: TextStyle(color: Color.fromARGB(255, 74, 101, 114)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).accentColor,)
        ),
        contentPadding: EdgeInsets.only(left: 5, right: 30, bottom: 10, top: 10)
      ),
      style: TextStyle(color: Colors.white),
      obscureText: obscure,
    );
  }
}
