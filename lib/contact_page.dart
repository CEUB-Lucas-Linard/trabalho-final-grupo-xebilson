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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 16.0,
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

            Text(
              "${contact.name.first} ${contact.name.last}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),

            //Divider(height: 32, thickness: 1),

            // TODO
            if (contact.phones.isNotEmpty)
              Card(
                child: Column(
                  children: contact.phones.map((phone) {
                    return ListTile(
                      leading: Icon(Icons.phone_outlined),
                      title: Text(phone.number),
                    );
                  }).toList(),
                ),
              )
            else
              Container()
          ]
        )
      )
    );
  }
}