import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, size: 15),
                Text(
                  'Nome:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('Gustavo'),
            Row(
              children: [
                Icon(Icons.email, size: 15),
                Text('e-mail:' ,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                
              ],
            ),
            Row(
              children: [
                Text('gu01stavo@gmail.com'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 15),
                Text(
                  'Idade: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('23 anos'),
            Row(
              children: [
                Icon(Icons.phone, size: 15),
                Text(
                  'Telefone:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('(11) 91234-5678'),
            Row(
              children: [
                Icon(Icons.place, size: 15),
                Text(
                  'Endereço:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('Rua das Flores, 123 - São Paulo, SP'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.delete),
      ),
    );
  }
}
