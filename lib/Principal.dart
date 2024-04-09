import 'package:flutter/material.dart';
import 'Tela2.dart';
import 'Tela3.dart';
import 'Tela4.dart';
import 'Tela5.dart';

//nomeando a classe.
class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _HomePageState();
}

//criando a página e a nomeando.
class _HomePageState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //inserindo o icon.
            const Icon(

              Icons.add_business_sharp,
              size: 140.0,
              color: Colors.purpleAccent,
            ),

            // colocando e alinhando o texto na página.
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.purpleAccent, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  // inserindo as rotas e nomeando os botões que navegarão para as páginas.
                  ElevatedButton(
                      child: const Text("Calculadora IMC"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tela2()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de usuário"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tela3()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tela4()),
                        );
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produto"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Tela5()),

                        );
                      }),
                ]),
          ],
        ),
      ),
    );
  }
}