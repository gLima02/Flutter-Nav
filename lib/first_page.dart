import 'package:flutter/material.dart';
import 'package:navegacao/second_page.dart';
import 'package:navegacao/argument.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route!'),
          onPressed: () {
            // Navegar para a second page
            Navigator.of(context).pushNamed(
              "/second",
              arguments: Mensagem(
                'Mensagem por rota',
                'Mensagem por argumento',
              ));
          },
        ),
      ),
    );
  }
}
