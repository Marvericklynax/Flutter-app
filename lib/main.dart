import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simple App Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Simple App!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Space between widgets
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20), // Space between widgets
            Image.network(
              'https://i.pinimg.com/564x/2c/dd/b6/2cddb63a528ce13f45498078a3d10aef.jpg', // Replace with your image URL
              height: 150, // Adjust the height as needed
              errorBuilder: (context, error, stackTrace) {
                return const Text('Failed to load image');
              },
            ),
          ],
        ),
      ),
    );
  }
}
