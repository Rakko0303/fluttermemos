import 'package:flutter/material.dart';

void main() => runApp(const Session07App());

class Session07App extends StatefulWidget {
  const Session07App({super.key});

  @override
  State<Session07App> createState() => _Session07AppState();
}

class _Session07AppState extends State<Session07App> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: const Text('Shiny-lab 第7回')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.rocket_launch, size: 64, color: Colors.teal),
                const SizedBox(height: 16),
                const Text(
                  'Flutter Webを公開できた！',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                Text('$count', style: const TextStyle(fontSize: 54)),
                const SizedBox(height: 10),
                FilledButton.icon(
                  onPressed: () => setState(() => count++),
                  icon: const Icon(Icons.add),
                  label: const Text('カウント +1'),
                ),
                TextButton(
                  onPressed: () => setState(() => count = 0),
                  child: const Text('リセット'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
