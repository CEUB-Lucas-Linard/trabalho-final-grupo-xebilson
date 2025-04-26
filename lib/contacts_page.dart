import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'contact_page.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

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
  }

  Future<void> _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts();
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

    return ListView.builder(
      itemCount: _contacts!.length,
      itemBuilder: (context, index) {
        final contact = _contacts![index];

        return ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(contact.displayName),
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
