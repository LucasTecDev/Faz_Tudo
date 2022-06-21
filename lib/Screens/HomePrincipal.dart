import 'package:flutter/material.dart';
import 'package:login_with_signup/Screens/Telas%20Criadas/HomeForm.dart';
import 'package:login_with_signup/Screens/Telas%20Criadas/ReaderPDF.dart';
import 'LoginForm.dart';

class HomePrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FazTudo BB'),),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.grey[100],
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.person, size: 50,),
                        
                          Text('Gerenciador de Usuário', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text('Abrir',style: TextStyle(color: Colors.white),),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeForm()));
                      })
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                color: Colors.grey[100],
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.read_more, size: 50,),
                        
                          Text(' Leitor de PDF', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        child: Text('Abrir',style: TextStyle(color: Colors.white),),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPDF()));
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
