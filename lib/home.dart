import 'package:flutter/material.dart';
import 'package:xebilson/contacts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List contacts = [
    Contact(name: 'Caio', phoneNumber: '(61) 94002-8922'),
    Contact(name: 'Matheus', phoneNumber: '(61) 91111-1111'),
    Contact(name: 'Rafael', phoneNumber: '(61) 92222-2222'),
    Contact(name: 'Kayke', phoneNumber: '(61) 93333-3333')
    ];

  // TODO
  void _add_contact() {
    setState(() {
      print("TODO");
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          onTap: (){},

                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text(contacts[index].name),
                          subtitle: Text(contacts[index].phoneNumber),
                          trailing: Icon(Icons.more_vert),
                      );
                  }
                  ))
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add_contact,
        tooltip: 'Adicionar Contato',
        child: const Icon(Icons.add),
      ),
    );
  }
}