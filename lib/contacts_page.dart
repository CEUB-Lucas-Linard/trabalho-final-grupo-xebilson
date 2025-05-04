import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'contact_page.dart';

class ContactsPage extends StatefulWidget {
  final TextEditingController searchController;
  final bool showFavorites;

  const ContactsPage({required this.searchController, super.key, required this.showFavorites});

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
    FlutterContacts.addListener(_onContactsChanged);
  }

  void _onSearchChanged() {
    setState(() {}); // Atualiza a tela quando o texto muda
  }

  void _onContactsChanged() {
    _fetchContacts();  // Recarrega os contatos
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_onSearchChanged);
    FlutterContacts.removeListener(_onContactsChanged);
    super.dispose();
  }

  // Função Assíncrona para pegar contatos
  Future<void> _fetchContacts() async {
    if (!await FlutterContacts.requestPermission()) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts(withPhoto: true, withProperties: true, withAccounts: true);
      setState(() => _contacts = contacts);
    }
  }

  // TODO: Função para botão de adicionar contato
  void _addContact () {
    print("TODO");
  }

  // Favorita Contato
  void _favoriteContact (Contact contact, BuildContext context) async {
    final bool newStatus = !contact.isStarred;
    try {
      setState(() => contact.isStarred = newStatus);
      await contact.update();
    } catch (e) {
      setState(() => contact.isStarred = !newStatus); // Reverte a mudança
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao favoritar contato: $e')),
        );
      }
    }

  }

  // Exclui Contato
  void _deleteContact (Contact contact) async {}

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

    // Filtra os contatos com base na search bar
    late final List<Contact> filteredContacts;
    if (widget.showFavorites) {
      filteredContacts = _contacts!.where((contact) {
        final name = contact.displayName.toLowerCase();
        final query = widget.searchController.text.toLowerCase();
        return name.contains(query) && contact.isStarred;
      }).toList();
    } else {
      filteredContacts = _contacts!.where((contact) {
        final name = contact.displayName.toLowerCase();
        final query = widget.searchController.text.toLowerCase();
        return name.contains(query);
      }).toList();
    }

    return Scrollbar(
      interactive: true,
      child: ListView.builder(
        itemCount: filteredContacts.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            // Botão de Adicionar Contato
            if (!widget.showFavorites){
              return ListTile(
                contentPadding: EdgeInsets.only(left: 34, top: 16, bottom: 16, right: 16),
                leading: Icon(Icons.add_circle_outline, size: 30),
                title: Text('Adicionar novo contato'),
                onTap: _addContact,
              );
            }
            else {
              return const SizedBox.shrink(); // Se estiver na aba de favoritos, não mostrar botão de Adicionar Contatos
            }
          }

          final contact = filteredContacts[index - 1];

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
            trailing: PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (value) {
                if (value == 'favorite') {
                  _favoriteContact(contact, context);
                } else if (value == 'delete') {
                  _deleteContact(contact);
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'favorite',
                  child: !contact.isStarred ? Text('Favoritar') : Text('Desfavoritar'),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Excluir'),
                ),
              ],
            ),

            onTap: () async {
              final fullContact = await FlutterContacts.getContact(contact.id, withAccounts: true);
              if ((fullContact != null) && (context.mounted)) {
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ContactPage(fullContact),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
