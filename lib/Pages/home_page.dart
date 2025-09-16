import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        flexibleSpace: Text("Flex"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, size: 15),
                Text('Nome:', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text('Gustavo'),
            Row(
              children: [
                Icon(Icons.email, size: 15),
                Text('e-mail:', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Row(children: [Text('gu01stavo@gmail.com')]),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 15),
                Text('Idade: ', style: TextStyle(fontWeight: FontWeight.bold)),
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
            Text(
              "Texto do Container:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                border: Border.all(color:  Color.fromARGB(255, 111, 0, 255)), 
                color: Color.fromARGB(255, 168, 162, 230),
              ),
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite seu login",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite sua senha",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 10, 11, 71),
                  textStyle: TextStyle(fontSize: 15),
                ),
                onPressed: () 
              {print(controllerLogin.text); 
              print(controllerSenha.text);
              }, 
              child: Row( mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Icon(Icons.login), 
              SizedBox(width: 10),
              Text('Login')
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
