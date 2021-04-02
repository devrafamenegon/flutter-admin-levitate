import 'package:flutter/material.dart';
import 'package:flutter_admin_levitate/widgets/input_field.dart';

//utilizo uma statefull pois os campos de email e senha serão validados em tempo real
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      //singleChildScrollView pois ao abrir o teclado, tenho a possibilidade de rolar a tela
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/levitate-no-background.png"),
                    width: 120.0,
                  ),
                  InputField(
                    icon: Icons.person_outline,
                    hint: "Usuário",
                    obscure: false,
                  ),
                  InputField(
                    icon: Icons.lock_outline,
                    hint: "Senha",
                    obscure: true,
                  ),
                  SizedBox(height: 32,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text("Entrar", style: TextStyle(fontSize: 24),),
                      onPressed: (){},
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
