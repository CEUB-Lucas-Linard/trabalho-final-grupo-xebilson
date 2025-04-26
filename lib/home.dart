import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:xebilson/contacts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Contact>? _contacts;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  // Função assíncrona que pega os contatos
  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts();
      setState(() => _contacts = contacts);
    }
  }

  // TODO
  void _addContact() {
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
              child: Builder(
                builder: (context) {
                  if (_permissionDenied) return Center(child: Text('Permission denied'));
                  if (_contacts == null) return Center(child: CircularProgressIndicator());

                  return ListView.builder(
                    itemCount: _contacts!.length,
                    itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            onTap: () async {
                              final fullContact = await FlutterContacts.getContact(_contacts![index].id);
                              await Navigator.of(context).push(MaterialPageRoute(builder: (_) => ContactPage(fullContact!)));
                            },

                            leading: CircleAvatar(child: Icon(Icons.person)),
                            title: Text(_contacts![index].displayName),
                            trailing: IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () async {
                                  //TODO
                                }),
                        );
                    }
                    );
                  }
              )
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addContact,
        tooltip: 'Adicionar Contato',
        child: const Icon(Icons.add),
      ),
    );
  }
}