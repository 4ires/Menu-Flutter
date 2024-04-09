import 'package:flutter/material.dart';
import 'Principal.dart';
import 'Tela2.dart';
import 'Tela3.dart';
import 'Tela4.dart';
import 'Tela5.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas nomeadas',
      initialRoute: '/',
      routes: {'/': (context) => Principal(),
        '/segunda': (context) => Tela2(),
        '/terceira': (context) => Tela3(),
        '/quarta': (context) => Tela4(),
        '/quinta': (context) => Tela5(),
      },
    );
  }
}