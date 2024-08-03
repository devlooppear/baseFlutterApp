import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Color.fromARGB(255, 240, 247, 252),
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Introdução ao Projeto',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Este projeto serve como uma base para aplicações que utilizam footers. '
                        'Escolhemos implementar um footer para proporcionar uma área fixa '
                        'na parte inferior da tela onde informações adicionais ou ações podem '
                        'ser apresentadas de maneira consistente em todas as páginas. O uso '
                        'de footers melhora a usabilidade e a navegação, oferecendo um ponto de '
                        'referência constante para os usuários.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blueGrey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Background color
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('Ir para a Segunda Página'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
