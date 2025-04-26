import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'contact_page.dart';

class ContactsPage extends StatefulWidget {
  final TextEditingController searchController;

  const ContactsPage({required this.searchController, Key? key}) : super(key: key);


  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact>? _contacts;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
    widget.searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {}); // Atualiza a tela quando o texto muda
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_onSearchChanged);
    super.dispose();
  }


  Future<void> _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts(withPhoto: true);
      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_permissionDenied) {
      return const Center(
        child: Text('Permissão negada'),
      );
    }
    if (_contacts == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final filteredContacts = _contacts!.where((contact) {
      final name = contact.displayName.toLowerCase();
      final query = widget.searchController.text.toLowerCase();
      return name.contains(query);
    }).toList();

    return ListView.builder(
      itemCount: filteredContacts.length,
      itemBuilder: (context, index) {
        final contact = filteredContacts[index];

        return ListTile(
          contentPadding: EdgeInsets.only(left: 20, top: 8, bottom: 8, right: 16),
          leading: CircleAvatar(
              radius: 30,
              backgroundImage: contact.photo != null
                  ? MemoryImage(contact.photo!)
                  : null,
              child: contact.photo == null
                  ? Icon(Icons.person, size: 30)
                  : null,
            ),

          title: Text(contact.displayName),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // TODO (Favoritar, Excluir etc...)
            },
          ),

          onTap: () async {
            final fullContact = await FlutterContacts.getContact(contact.id);
            if (fullContact != null) {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ContactPage(fullContact),
                ),
              );
            }
          },
        );
      },
    );
  }
}
