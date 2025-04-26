import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';

class ContactPage extends StatelessWidget {
  final Contact contact;

  const ContactPage(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: contact.photo != null
                  ? MemoryImage(contact.photo!)
                  : null,
              child: contact.photo == null
                  ? Icon(Icons.person, size: 60)
                  : null,
            ),
            SizedBox(height: 12),
            Text(
              "${contact.name.first} ${contact.name.last}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            Divider(height: 32, thickness: 1),

            if (contact.phones.isNotEmpty)
              _buildInfoTile(Icons.phone, contact.phones.first.number),
            if (contact.emails.isNotEmpty)
              _buildInfoTile(Icons.email, contact.emails.first.address),
            if (contact.addresses.isNotEmpty)
              _buildInfoTile(Icons.home, contact.addresses.first.address),
          ],
        ),
      ),
    );
  }

// Widget auxiliar para criar os itens da ficha
  Widget _buildInfoTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

}