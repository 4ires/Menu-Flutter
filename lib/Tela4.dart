import 'package:flutter/material.dart';


void main() {
  runApp(const Tela4());
}

//criando a classe.
class Tela4 extends StatelessWidget {
  const Tela4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Button Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//criando o contador
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //criando o incrementador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //criando o reduzidor
  void _reduzirCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    //definindo o status bar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              //criando os botões junto com os icons.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: _reduzirCounter,
                    child: const Icon(Icons.remove),

                  ),
                ],
              ),
            ]
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
