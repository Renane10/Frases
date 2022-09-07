import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  var _frases = [
    "Mas vale um pássaro na mão do que dois voando.",
    "A vingança nunca é plena mata a alma e a envenena.",
    "Três pratos de trigo para três tigres tristes.",
    "Que a força esteja com voce."
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";
  void _gerarFrase(){
    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt( _frases.length );
    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/images.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.blue,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}