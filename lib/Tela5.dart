import 'dart:math';

import 'package:flutter/material.dart';

//criando a página.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela5(),
    );
  }
}

//criando a classe.
class Tela5 extends StatefulWidget {
  const Tela5({
    super.key,
  });

  @override
  State<Tela5> createState() => _MyHomePageState();
}

//criando as variáveis e inserindo os textos.
class _MyHomePageState extends State<Tela5> {
  TextEditingController descricaoController = new TextEditingController();
  TextEditingController precoController = new TextEditingController();
  String _textoInfo = "Informe os dados do produto.";

  void _limpar_Tela() {
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  //input cadastrar.
  void _cadastrar() {
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Dados cadastrados com sucesso!";
    });
  }

  //inserindo e estilizando os outros textos.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastro de Produto"),
          centerTitle: true,
          backgroundColor: Colors.pink[900],
          actions: <Widget>[
            IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.pink,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Descrição",
                  labelStyle: TextStyle(color: Colors.pink[900])),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Preço",
                  labelStyle: TextStyle(color: Colors.pink[900])),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
              controller: precoController,
            ),

            //inserindo o botão de cadastro.
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar,child: const Text("Cadastrar")),
              ),
            ),
            Text(_textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pink[900], fontSize: 25.0)),
          ],
        ),
      ),
    );
  }
}