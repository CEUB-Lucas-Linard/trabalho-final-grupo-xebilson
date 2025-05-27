import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final Contact _contact = Contact();

  final ImagePicker _imagePicker = ImagePicker();

  List<Phone> phones = [Phone("")];
  List<TextEditingController> phoneTextControllers = [TextEditingController()];

  List<Email> emails = [Email("")];
  List<TextEditingController> emailTextControllers = [TextEditingController()];

  List<Address> addresses = [Address("")];
  List<TextEditingController> addressTextControllers = [TextEditingController()];

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
    _contact.phones = phones;
    await _contact.insert();
  }

  void _addPhoneField() {
    setState(() {
      phones.add(Phone(""));
      phoneTextControllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    super.dispose();
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
              spacing: 16.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Escolha de foto
                Column(
                  spacing: 16,
                  children: [
                    InkResponse(
                      radius: 80,
                      onTap: () async {await _pickPhoto();},
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: _contact.photo != null
                            ? MemoryImage(_contact.photo!)
                            : null,
                        child: _contact.photo == null
                            ? Icon(Icons.add_photo_alternate, size: 80)
                            : null,
                      ),
                    ),

                    ElevatedButton(
                        onPressed: () async {await _pickPhoto();},
                        child: Text('Adicionar imagem')),
                  ],
                ),

                // Nome, Sobrenome, Organização, Telefones, E-mails
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    spacing: 24.0,
                    children: [

                      // Campos de Nome e Sobrenome
                      Column(
                        spacing: 10,
                        children: [
                          // Campo de Nome
                          TextFormField(
                            initialValue: '',
                            decoration: InputDecoration(
                                labelText: 'Nome',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                            ),
                            onChanged: (name) => _contact.name.first = name,
                          ),

                          // Campo de Sobrenome
                          TextFormField(
                            initialValue: '',
                            decoration: InputDecoration(
                                labelText: 'Sobrenome',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                            ),
                            onChanged: (lastName) => _contact.name.last = lastName,
                          ),
                        ],
                      ),

                      // Campo de Organização
                      TextFormField(
                        initialValue: '',
                        decoration: InputDecoration(
                          labelText: 'Organização',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onChanged: (organization) => _contact.organizations = [Organization(company: organization)],
                      ),

                      // Campo de Telefones
                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...phones.asMap().entries.map((entry) {
                            final index = entry.key;

                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: phoneTextControllers[index],
                                        decoration: InputDecoration(
                                          labelText: 'Telefone',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        onChanged: (number) => phones[index].number = number,
                                      ),
                                    ),
                                    IconButton(
                                      color: Colors.red[200],
                                      icon: Icon(
                                      Icons.remove_circle_outline,
                                      size: 26,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          phones.removeAt(index);
                                          phoneTextControllers.removeAt(index);
                                        });
                                      }
                                    )
                                  ],
                                ),

                                //TODO: seletor de Labels
                                SizedBox.shrink(),
                              ],
                            );
                          },),
                          ElevatedButton(
                            onPressed: () => _addPhoneField(),
                            child: Text('Adicionar Telefone'),
                          ),
                        ],
                      ),

                      // TODO Campo de E-mail e Endereço
                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: []
                      ),
                    ],
                  ),
                ),

                // TODO Notas
                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
