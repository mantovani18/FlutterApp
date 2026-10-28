
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Meu perfil de jogador',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Acompanhe seu desempenho nos desafios.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            const Card(
              child: ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text('Pontuação'),
                subtitle: Text('Nenhum ponto conquistado ainda.'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.quiz),
                title: Text('Desafios concluídos'),
                subtitle: Text('Você ainda não concluiu desafios.'),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(15),
                ),
                child: const Text('Voltar para a página principal'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
