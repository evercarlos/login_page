import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class loginPage extends StatelessWidget {
  Widget renderEmailInput(){
    return Padding(
             padding: const EdgeInsets.only(top: 10),
             child: TextFormField(
               decoration: InputDecoration(hintText: "Usuario o correo electrónico"),
             ),
           );
  }

Widget renderPasswodInput(){
  return Padding(
             padding: const EdgeInsets.only(top: 30),
             child: TextFormField(
               decoration: InputDecoration(hintText: "Contraseña"),
               obscureText: true,
             ),
           );
}

Widget renderLoginButton(){
  return Container(
    padding: const EdgeInsets.only(top:32),
     child: RaisedButton(
       textColor: Colors.white,
       child:Text('Entrar'),
       onPressed:() {},
     ),
    );
}


Widget renderCreateAccountLink(){
  return  Container(
    padding: EdgeInsets.only(top:20),
    child: Text(
      'O crear tu cuenta aqui',
      textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.bold),
    )
  );
}

Widget renderDivider(){
  return Container(
    padding: const EdgeInsets.only(top: 32),
    child: Row(children:[
      Expanded(child: Divider(height: 1,),),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text('0'),
      ),
      Expanded(child: Divider(height: 1,),)
    ],),
  );
}

Widget renderFacebookButton(){
  return Container(
    padding: const EdgeInsets.only(top:32),
     child: RaisedButton(
       color: Color.fromRGBO(59, 89, 152, 1),
       textColor: Colors.white,
       child:Row(
         children:[
         Icon(FontAwesomeIcons.facebookSquare),
         Expanded(
           child: Text('Entrar con Facebook', textAlign: TextAlign.center,),
         )
       ],),
       onPressed: (){},
     ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
         children: [
           Image.asset('assets/images/logo.png',
           width: 400,
           height: 360,
           ),
           renderEmailInput(),
           renderPasswodInput(),
           renderLoginButton(),
           renderCreateAccountLink(),
           renderDivider(),
           renderFacebookButton(),
         ],
        ),    
      ),
    );
  }
}