import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Arthur da Silva Leite'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indice = 0;
  final List<String> _imagens = [
    'assets/images/pikachu.webp',
    'assets/images/squirtle.gif',
    'assets/images/froakie.gif',
    'assets/images/oshawott.webp',
    'assets/images/mudkip.gif',
    'assets/images/snivy.gif',
  ];
  final List<String> _mensagens = [
    'Olá! Bem-vindo ao meu app!',
    'Oi! Que bom te ver aqui!',
    'E aí?',
    'Salve!',
    'Ahoy!',
    'Aoba!'
  ];
  void _mudarTexto() {
    setState(() {
      _indice = (_indice + 1) % _mensagens.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Meu App de Aprendizado'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(_imagens[_indice]),
            const SizedBox(height: 20),
            const Text(
              'Estou desenvolvendo meu primeiro app Flutter!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              _mensagens[_indice],
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.deepPurple),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                height: 30), // Um espaço para não ficar colado no texto
            ElevatedButton(
              onPressed: _mudarTexto,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Cor de fundo
                foregroundColor: Colors.white, // Cor do texto
              ),
              child: const Text('Cumprimentar'),
            ),
          ],
        ),
      ),
    );
  }
}
