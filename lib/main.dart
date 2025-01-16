import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 207, 224, 188),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Programa Layout'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 99, 120, 61),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Layout Superior
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 207, 224, 188),
            width: double.infinity,
            child: const Text(
              'Layout Superior',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 207, 224, 188),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color.fromARGB(255, 99, 120, 61),
                    width: 4,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Meu Aplicativo',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          // Layout Inferior
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 29, 54, 31),
            width: double.infinity,
            child: const Text(
              'Layout Inferior',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
