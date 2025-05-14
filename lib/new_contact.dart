import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final _contact = Contact();



  final ImagePicker _imagePicker = ImagePicker();

  Future _pickPhoto() async {
    final photo = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (photo != null) {
      final bytes = await photo.readAsBytes();
      setState(() {
        _contact.photo = bytes;
      });
    }
  }

  Future<void> _saveContact() async {
    await _contact.insert();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Contato"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () async {
              await _saveContact();
              if (context.mounted) {
                Navigator.pop(context);
              }
            }
          )
        ],
      ),
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Escolha de foto
                Center(
                  child: InkResponse(
                    radius: 80,
                    onTap: () async {await _pickPhoto();},
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: _contact.photo != null
                          ? MemoryImage(_contact.photo!)
                          : null,
                      child: _contact.photo == null
                          ? Icon(Icons.person, size: 80)
                          : null,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 20.0,
                    children: [
                      // Campo de Nome
                      TextFormField(
                        initialValue: _contact.displayName,
                        decoration: InputDecoration(labelText: 'Nome'),
                        onChanged: (name) => _contact.name.first = name,
                      ),

                      // Campo de Sobrenome
                      TextFormField(
                        initialValue: _contact.name.last,
                        decoration: InputDecoration(labelText: 'Sobrenome'),
                        onChanged: (lastName) => _contact.name.last = lastName,
                      ),

                      // Campo de Telefone
                      TextFormField(
                        initialValue: _contact.phones.isNotEmpty ? _contact.phones.first.number : '',
                        decoration: InputDecoration(labelText: 'Telefone'),
                        keyboardType: TextInputType.phone,
                        onChanged: (phone) => _contact.phones = [Phone(phone)],
                      ),

                      // Campo de Email
                      TextFormField(
                        initialValue: _contact.emails.isNotEmpty ? _contact.emails.first.address : '',
                        decoration: InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (email) => _contact.emails = [Email(email)],
                      ),

                      // Campo de Endereço
                      TextFormField(
                        initialValue: _contact.addresses.isNotEmpty ? _contact.addresses.first.address : '',
                        decoration: InputDecoration(labelText: 'Endereço'),
                        onChanged: (address) => _contact.addresses = [Address(address)],
                      ),

                      // Campo de Organização
                      TextFormField(
                        initialValue: _contact.organizations.isNotEmpty ? _contact.organizations.first.company : '',
                        decoration: InputDecoration(labelText: 'Organização'),
                        onChanged: (organization) => _contact.organizations = [Organization(company: organization)],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
