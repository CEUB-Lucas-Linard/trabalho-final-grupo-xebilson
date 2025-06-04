import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:image_picker/image_picker.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

// Labels dos Phones, o formato é meio idiota e redundante, mas funciona...
const List<MenuEntry> phoneLabelEntries = [
  MenuEntry(label: 'Celular', value: 'Celular'),
  MenuEntry(label: 'Assistente', value: 'Assistente'),
  MenuEntry(label: 'Retorno de chamada', value: 'Retorno de chamada'),
  MenuEntry(label: 'Carro', value: 'Carro'),
  MenuEntry(label: 'Empresa', value: 'Empresa'),
  MenuEntry(label: 'Fax (Casa)', value: 'Fax (Casa)'),
  MenuEntry(label: 'Fax (Outro)', value: 'Fax (Outro)'),
  MenuEntry(label: 'Fax (Trabalho)', value: 'Fax (Trabalho)'),
  MenuEntry(label: 'Casa', value: 'Casa'),
  MenuEntry(label: 'iPhone', value: 'iPhone'),
  MenuEntry(label: 'ISDN', value: 'ISDN'),
  MenuEntry(label: 'Principal', value: 'Principal'),
  MenuEntry(label: 'MMS', value: 'MMS'),
  MenuEntry(label: 'Pager', value: 'Pager'),
  MenuEntry(label: 'Rádio', value: 'Rádio'),
  MenuEntry(label: 'Escola', value: 'Escola'),
  MenuEntry(label: 'Telex', value: 'Telex'),
  MenuEntry(label: 'TTY/TTD', value: 'TTY/TTD'),
  MenuEntry(label: 'Trabalho', value: 'Trabalho'),
  MenuEntry(label: 'Celular (Trabalho)', value: 'Celular (Trabalho)'),
  MenuEntry(label: 'Pager (Trabalho)', value: 'Pager (Trabalho)'),
  MenuEntry(label: 'Outro', value: 'Outro'),
  MenuEntry(label: 'Personalizado', value: 'Personalizado'),
];

final _stringToPhoneLabel = {
  'Assistente': PhoneLabel.assistant,
  'Retorno de chamada': PhoneLabel.callback,
  'Carro': PhoneLabel.car,
  'Empresa': PhoneLabel.companyMain,
  'Fax (Casa)': PhoneLabel.faxHome,
  'Fax (Outro)': PhoneLabel.faxOther,
  'Fax (Trabalho)': PhoneLabel.faxWork,
  'Casa': PhoneLabel.home,
  'iPhone': PhoneLabel.iPhone,
  'ISDN': PhoneLabel.isdn,
  'Principal': PhoneLabel.main,
  'MMS': PhoneLabel.mms,
  'Celular': PhoneLabel.mobile,
  'Pager': PhoneLabel.pager,
  'Rádio': PhoneLabel.radio,
  'Escola': PhoneLabel.school,
  'Telex': PhoneLabel.telex,
  'TTY/TTD': PhoneLabel.ttyTtd,
  'Trabalho': PhoneLabel.work,
  'Celular (Trabalho)': PhoneLabel.workMobile,
  'Pager (Trabalho)': PhoneLabel.workPager,
  'Outro': PhoneLabel.other,
  'Personalizado': PhoneLabel.custom,
};

// Labels dos E-mails, no mesmo formato idiota
const List<MenuEntry> emailLabelEntries = [
  MenuEntry(label: 'Casa', value: 'Casa'),
  MenuEntry(label: 'iCloud', value: 'iCloud'),
  MenuEntry(label: 'Celular', value: 'Celular'),
  MenuEntry(label: 'Escola', value: 'Escola'),
  MenuEntry(label: 'Trabalho', value: 'Trabalho'),
  MenuEntry(label: 'Outro', value: 'Outro'),
  MenuEntry(label: 'Personalizado', value: 'Personalizado'),
];

final _stringToEmailLabel = {
  'Casa': EmailLabel.home,
  'iCloud': EmailLabel.iCloud,
  'Celular': EmailLabel.mobile,
  'Escola': EmailLabel.school,
  'Trabalho': EmailLabel.work,
  'Outro': EmailLabel.other,
  'Personalizado': EmailLabel.custom,
};

// Labels dos Endereços
const List<MenuEntry> addressLabelEntries = [
  MenuEntry(label: 'Casa', value: 'Casa'),
  MenuEntry(label: 'Escola', value: 'Escola'),
  MenuEntry(label: 'Trabalho', value: 'Trabalho'),
  MenuEntry(label: 'Outro', value: 'Outro'),
  MenuEntry(label: 'Personalizado', value: 'Personalizado'),
];

final _stringToAddressLabel = {
  'Casa': AddressLabel.home,
  'Escola': AddressLabel.school,
  'Trabalho': AddressLabel.work,
  'Outro': AddressLabel.other,
  'Personalizado': AddressLabel.custom,
};


typedef MenuEntry = DropdownMenuEntry<String>;

class _NewContactState extends State<NewContact> {
  final Contact _contact = Contact();

  final ImagePicker _imagePicker = ImagePicker();

  // Lista de telefones e seus respectivos controllers
  List<Phone> phones = [Phone("")];
  List<TextEditingController> phoneTextControllers = [TextEditingController()];

  static final List<MenuEntry> phoneMenuEntries = UnmodifiableListView<MenuEntry>(
    phoneLabelEntries.map<MenuEntry>((value) => MenuEntry(value: value.value, label: value.label)),
  );
  var phoneDropdownValue = phoneLabelEntries.first;


  // Lista de e-mails e seus respectivos controllers
  List<Email> emails = [Email("")];
  List<TextEditingController> emailTextControllers = [TextEditingController()];
  
  static final List<MenuEntry> emailMenuEntries = UnmodifiableListView<MenuEntry>(
    emailLabelEntries.map<MenuEntry>((value) => MenuEntry(value: value.value, label: value.label)),
  );
  var emailDropdownValue = emailLabelEntries.first;
  

  // Lista de endereços e seus respectivos controllers
  List<Address> addresses = [Address("")];
  List<TextEditingController> addressTextControllers = [TextEditingController()];

  static final List<MenuEntry> addressMenuEntries = UnmodifiableListView<MenuEntry>(
    addressLabelEntries.map<MenuEntry>((value) => MenuEntry(value: value.value, label: value.label)),
  );
  var addressDropdownValue = addressLabelEntries.first;

  // Notas Text Controller.
  late final TextEditingController _noteController;

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
    _contact.emails = emails;
    _contact.addresses = addresses;
    print(_contact.addresses);
    await _contact.insert();
  }

  void _addPhoneField() {
    setState(() {
      phones.add(Phone(""));
      phoneTextControllers.add(TextEditingController());
    });
  }

  void _addEmailField() {
    setState(() {
      emails.add(Email(""));
      emailTextControllers.add(TextEditingController());
    });
  }

  void _addAddressField() {
    setState(() {
      addresses.add(Address(""));
      addressTextControllers.add(TextEditingController());
    });
  }

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController(
      text: _contact.notes.isNotEmpty ? _contact.notes.first.note : '',
    );
  }

  @override
  void dispose() {
    _noteController.dispose();
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [

                                    // Editar Telefone
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

                                    //Remover Telefone
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

                                // Seletor de Labels para o Telefone
                                DropdownMenu<String>(
                                  initialSelection: phoneLabelEntries[index].value,
                                  menuHeight: 150,
                                  onSelected: (value) {
                                    setState(() {
                                      phones[index].label = _stringToPhoneLabel[value]!;
                                    });
                                  },
                                  dropdownMenuEntries: phoneMenuEntries,
                                )
                              ],
                            );
                          },),
                          //Adicionar Telefone
                          ElevatedButton(
                            onPressed: () => _addPhoneField(),
                            child: Text('Adicionar Telefone'),
                          ),
                        ],
                      ),

                      // Campo de E-mail
                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...emails.asMap().entries.map((entry) {
                            final index = entry.key;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [

                                    //Editar E-mail
                                    Expanded(
                                        child: TextFormField(
                                          controller: emailTextControllers[index],
                                          decoration: InputDecoration(
                                            labelText: 'E-mail',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              ),
                                          ),
                                          onChanged: (email) => emails[index].address = email,
                                        ),
                                    ),

                                    //Remover E-mail
                                    IconButton(
                                      color: Colors.red[200],
                                      icon: Icon(
                                        Icons.remove_circle_outline,
                                        size: 26,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          emails.removeAt(index);
                                          emailTextControllers.removeAt(index);
                                        });
                                      },
                                    )
                                  ],
                                ),

                                //Seletor de Labels para o E-mail
                                DropdownMenu<String>(
                                  initialSelection: emailLabelEntries[index].value,
                                  menuHeight: 150,
                                  onSelected: (value) {
                                    setState(() {
                                      emails[index].label = _stringToEmailLabel[value]!;
                                    });
                                  },
                                  dropdownMenuEntries: emailMenuEntries,
                                )
                              ]
                            );
                          },),

                          //Adicionar Emails
                          ElevatedButton(
                            onPressed: () => _addEmailField(),
                            child: Text('Adicionar E-mail'),
                          ),
                        ]
                      ),

                      // Campo de Endereços
                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...addresses.asMap().entries.map((entry){
                            final index = entry.key;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                Row(
                                  spacing: 10,
                                  children: [

                                    // Editar Endereços
                                    Expanded(
                                        child: TextFormField(
                                          controller: addressTextControllers[index],
                                          decoration: InputDecoration(
                                            labelText: 'Endereço',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                          ),
                                          onChanged: (value) => addresses[index].address = value,

                                        ),
                                    ),

                                    //Remover Endereço
                                    IconButton(
                                      color: Colors.red[200],
                                      icon: Icon(
                                        Icons.remove_circle_outline,
                                        size: 26,
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          addresses.removeAt(index);
                                          addressTextControllers.removeAt(index);
                                        });
                                      },
                                    )
                                  ]
                                ),

                                //Seletor de Labels para o Endereço
                                DropdownMenu<String>(
                                  initialSelection: addressLabelEntries[index].value,
                                  menuHeight: 150,
                                  onSelected: (value) {
                                    setState(() {
                                      addresses[index].label = _stringToAddressLabel[value]!;
                                    });
                                  },
                                  dropdownMenuEntries: addressMenuEntries,
                                )
                              ],
                            );
                          }),
                          //Adicionar Endereço
                          ElevatedButton(
                            onPressed: () => _addAddressField(),
                            child: Text('Adicionar Endereço'),
                          ),
                        ],
                      ),

                      TextFormField(
                        controller: _noteController,
                        onChanged: (value) {
                          if (_contact.notes.isEmpty) {
                            _contact.notes = [Note(value)];
                          } else {
                            _contact.notes.first.note = value;
                          }
                        },
                        maxLines: null,
                        decoration: InputDecoration(
                          labelText: 'Nota',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 36)
              ],
            ),
          ),
        ),
      ),
    );
  }
}