import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/properties/phone.dart';

class ContactPage extends StatelessWidget {
  final Contact contact;

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

  ContactPage(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: contact.isStarred
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
            onPressed: () {
              // TODO (Favoritar Contato)
            },
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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 20.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: contact.photo != null
                  ? MemoryImage(contact.photo!)
                  : null,
              child: contact.photo == null
                  ? Icon(Icons.person, size: 80)
                  : null,
            ),

            Text(
              "${contact.name.first} ${contact.name.last}",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),

            //SizedBox(height: 2),
            //Divider(height: 32, thickness: 1),

            // TODO
            if (contact.phones.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 8),
                        child: Text(
                          'Telefones',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ...contact.phones.map((phone) {
                        return ListTile(
                          leading: Icon(Icons.phone_outlined, size: 26),
                          title: Text(phone.number),
                          subtitle: Text(_phoneLabelToString[phone.label] ?? 'Celular'),
                        );
                      }),
                    ],
                  ),
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