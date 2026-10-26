import 'package:flutter/material.dart';


class PlaceholderScreen extends StatefulWidget {
  const PlaceholderScreen({super.key});

  @override
  State<PlaceholderScreen> createState() => _PlaceholderScreenState();
}

class _PlaceholderScreenState extends State<PlaceholderScreen> {
  int _testCounter = 0;

  void _onTestButtonPressed() {
    setState(() {
      _testCounter++;
    });

    // TODO: Inserir meus testes iniciais
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Test button tapped! Count: $_testCounter'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  // TODO: tentar arrumar os erros disso aqui tbm btw... to usando mto esse todo...
  @override // honestamente a IA disse pra usar o Override que isso tava dando problema... vou ter q perguntar pro professor sobre isso...
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Tentativa de fazer uma barra lateral
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Menu Teste 404',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Opções vão aqui',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('emoji de casa'),
              onTap: () {
                Navigator.pop(context); // esse menu n ta fechano... ah... fechou! :D
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // Acho que vou fazer esse botão central um clicker nmrl
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'tela de num sei',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            Text(
              'Test button tapped: $_testCounter time(s)',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _onTestButtonPressed,
              icon: const Icon(Icons.science),
              label: const Text('cookie clicker'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
