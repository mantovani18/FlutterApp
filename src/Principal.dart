
import 'package:flutter/material.dart';
import 'Perfil.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saia da 5ª Série'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Perfil(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.psychology,
                size: 80,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 10),
              const Text(
                'Saia da 5ª Série!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Teste seus conhecimentos e descubra '
                    'se você realmente aprendeu na escola!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Text(
                'Escolha uma categoria',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.calculate,
                    color: Colors.deepPurple,
                  ),
                  title: const Text('Matemática'),
                  subtitle: const Text('Desafie sua lógica e seus cálculos.'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.menu_book,
                    color: Colors.deepPurple,
                  ),
                  title: const Text('Português'),
                  subtitle: const Text('Teste sua gramática e interpretação.'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.public,
                    color: Colors.deepPurple,
                  ),
                  title: const Text('Conhecimentos gerais'),
                  subtitle: const Text('Perguntas sobre diversos assuntos.'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
                child: const Text(
                  'Começar desafio',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Aprenda brincando e desafie seus amigos!',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
