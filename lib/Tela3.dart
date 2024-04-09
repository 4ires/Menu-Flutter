import 'package:flutter/material.dart';
import 'Tela4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela3(),
    );
  }
}

//criando a classe.
class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _HomePageState();
}

//criando os textos e as váriaveis para inserir os dados.
class _HomePageState extends State<Tela3> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";


  void _cadastrar_usuario(){
    usuarioController.text = "";
    senhaController.text = "";
    setState((){
      _textoInfo = "Usuário cadastrado com sucesso!";

    });
  }
  void _limpar_Tela (){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados.";
    });

  }

  //nomeando e estilizando a página.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuário"),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: const Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            //inserindo o icon.
            const Icon(
              Icons.person_outline,
              size: 170.0,
              color: Colors.pink,
            ),

            //input para o usuário.
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Usuário:",
                labelStyle: TextStyle(color:Colors.pink[200]),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),

            //input para a senha.
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha:",
                labelStyle: TextStyle(color: Colors.pink[200]),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),

            //botão para executar o cadastro.
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,

                child: ElevatedButton(
                  onPressed: _cadastrar_usuario,
                  child: const Text("Cadastrar"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                  ),
                ),
              ),
            ),

            //texto dizendo que as informações foram cadastradas.
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pink[200],
                fontSize: 25.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
