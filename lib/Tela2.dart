import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rotas_nomeadas/Tela3.dart';
import 'Tela3.dart';

//criando a página.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela2(),
    );
  }
}

//criando a classe.
class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _HomePageState();
}

//criando as variáveis e adcionando um texto.
class _HomePageState extends State<Tela2> {
  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

//cálculo das variáveis e a condição.
  void _calcular_imc(){
    setState((){
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);
      double imc  = peso / pow ((altura/100), 2);

      if (imc < 18.5){
        _textoInfo = "Desnutrido (${imc})";
      }
      if (imc >=18.6){
        _textoInfo = "Peso ideal(${imc})";
      }
      if (imc>=25.0){
        _textoInfo = "Levemente acima do peso(${imc})";
      }
      if (imc>=30.0){
        _textoInfo = "Obesidade grau 1(${imc})";
      }
      if (imc>=35.0){
        _textoInfo = "Obesidade grau 2 (${imc})";
      }
      if (imc>=40.0){
        _textoInfo = "Obesidade grau 3 (mórbida) (${imc})";
      }

    });
  }

  //após os dados preenchidos, quando a seta for clicada, o programa reiniciará.
  void _limpar_Tela (){
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  //criando e estilizando os botões da página.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: const Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[

            const Icon(
              Icons.person_outline,
              size: 170.0,
              color: Colors.pinkAccent,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "PESO (KG)",
                labelStyle: TextStyle(color: Colors.pinkAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),

            //Input para a altura
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "ALTURA (cm)",
                labelStyle: TextStyle(color: Colors.pinkAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),

            //Botão para executar a calculadora do IMC
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,

                child: ElevatedButton(
                  onPressed: _calcular_imc,
                  child: const Text("Calcular"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                  ),
                ),
              ),
            ),
            
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

