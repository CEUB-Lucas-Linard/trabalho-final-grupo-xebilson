import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/properties/address.dart';
import 'package:flutter_contacts/properties/email.dart';
import 'package:flutter_contacts/properties/phone.dart';

class ContactPage extends StatefulWidget {
  final Contact contact;


  const ContactPage(this.contact, {super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _phoneLabelToString = {
    PhoneLabel.assistant: 'Assistente',
    PhoneLabel.callback: 'Retorno de chamada',
    PhoneLabel.car: 'Carro',
    PhoneLabel.companyMain: 'Empresa',
    PhoneLabel.faxHome: 'Fax (Casa)',
    PhoneLabel.faxOther: 'Fax (Outro)',
    PhoneLabel.faxWork: 'Fax (Trabalho)',
    PhoneLabel.home: 'Casa',
    PhoneLabel.iPhone: 'iPhone',
    PhoneLabel.isdn: 'ISDN',
    PhoneLabel.main: 'Principal',
    PhoneLabel.mms: 'MMS',
    PhoneLabel.mobile: 'Celular',
    PhoneLabel.pager: 'Pager',
    PhoneLabel.radio: 'Rádio',
    PhoneLabel.school: 'Escola',
    PhoneLabel.telex: 'Telex',
    PhoneLabel.ttyTtd: 'TTY/TTD',
    PhoneLabel.work: 'Trabalho',
    PhoneLabel.workMobile: 'Celular (Trabalho)',
    PhoneLabel.workPager: 'Pager (Trabalho)',
    PhoneLabel.other: 'Outro',
    PhoneLabel.custom: 'Personalizado',
  };

  final _emailLabelToString = {
    EmailLabel.home: 'Casa',
    EmailLabel.iCloud: 'iCloud',
    EmailLabel.mobile: 'Celular',
    EmailLabel.school: 'Escola',
    EmailLabel.work: 'Trabalho',
    EmailLabel.other: 'Outro',
    EmailLabel.custom: 'Personalizado',
  };

  final _addressLabelToString = {
    AddressLabel.home: 'Casa',
    AddressLabel.school: 'Escola',
    AddressLabel.work: 'Trabalho',
    AddressLabel.other: 'Outro',
    AddressLabel.custom: 'Personalizado',
  };

  bool get hasAnyContactData =>
      widget.contact.phones.isNotEmpty || widget.contact.emails.isNotEmpty || widget.contact.addresses.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: widget.contact.isStarred
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
            onPressed: () async {
              setState(() {
                widget.contact.isStarred = !widget.contact.isStarred;
              });
              try {
                await widget.contact.update();
              } catch (e) {
                // Você pode mostrar um snackbar, log, etc.
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text('Erro ao atualizar contato: $e')
                    )
                );
              }
            }
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // TODO (Página de Edição de Contato)
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // TODO (Deletar Contato)
            },
          ),
        ]
      ),
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20.0,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: widget.contact.photo != null
                      ? MemoryImage(widget.contact.photo!)
                      : null,
                  child: widget.contact.photo == null
                      ? Icon(Icons.person, size: 80)
                      : null,
                ),

                Text(
                  "${widget.contact.name.first} ${widget.contact.name.last}",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // TODO

                Visibility(
                  visible: hasAnyContactData,
                  replacement: Container(),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 12, bottom: 6),
                          child: Text(
                            'Dados de contato',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),

                        // Telefones
                        ...widget.contact.phones.asMap().entries.map((entry) {
                          final index = entry.key;
                          final phone = entry.value;

                          return ListTile(
                            leading: index == 0 ? Icon(Icons.phone_outlined, size: 26) : const SizedBox.shrink(),
                            title: Text(phone.number),
                            subtitle: Text(_phoneLabelToString[phone.label] ?? 'Outro'),
                            onTap: (){},
                          );
                        }),

                        // E-mails
                        ...widget.contact.emails.asMap().entries.map((entry) {
                          final index = entry.key;
                          final email = entry.value;

                          return ListTile(
                            leading: index == 0 ? Icon(Icons.email_outlined, size: 26) : const SizedBox.shrink(),
                            title: Text(email.address),
                            subtitle: Text(_emailLabelToString[email.label] ?? 'Outro'),
                            onTap: (){},
                          );
                        }),

                        // Endereços
                        ...widget.contact.addresses.asMap().entries.map((entry) {
                          final index = entry.key;
                          final address = entry.value;

                          return ListTile(
                            leading: index == 0 ? Icon(Icons.location_on_outlined, size: 26) : const SizedBox.shrink(),
                            title: Text(address.address),
                            subtitle: Text(_addressLabelToString[address.label] ?? 'Outro'),
                            onTap: (){},
                          );
                        }),

                        SizedBox(height: 8)

                      ],
                    ),
                  ),
                )

              ]
            ),
          )
        ),
      )
    );
  }
}