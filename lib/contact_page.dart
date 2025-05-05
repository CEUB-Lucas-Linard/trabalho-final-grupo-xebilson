import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
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

  Future<void> makePhoneCall(String phoneNumber, BuildContext context) async {
    final permission = await Permission.phone.status;
    if (permission.isDenied) {
      final result = await Permission.phone.request();
      if (!result.isGranted) {
        // Usuário negou a permissão, então não faça nada
        return;
      }
    }

    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Não foi possível iniciar a ligação para $phoneNumber')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Botão de Favoritar Contato
          IconButton(
            icon: widget.contact.isStarred
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
            onPressed: () async {
              final bool newStatus = !widget.contact.isStarred;
              try {
                setState(() => widget.contact.isStarred = newStatus);
                await widget.contact.update();
              } catch (e) {
                setState(() => widget.contact.isStarred = !newStatus); // Reverte a mudança
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Erro ao favoritar contato: $e')),
                  );
                }
              }
            },
          ),

          // Botão de Editar Contato
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // TODO (Página de Edição de Contato)
            },
          ),

          // Botão de Deletar Contato
          IconButton(
            icon: Icon(Icons.delete),
            onPressed:
              () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text("Excluir Contato?"),
                    content: Text("Certeza que deseja excluir ${widget.contact.displayName}?"),
                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text("Cancelar")
                      ),

                      TextButton(
                          onPressed: () async {
                            Navigator.pop(context); // Fecha o diálogo

                            await widget.contact.delete();
                            if (context.mounted) {
                              Navigator.pop(context); // Volta para a lista de contatos
                            }
                          },
                          child: const Text("Confirmar")
                      ),
                    ],
                  )
              )
          ),
        ]
      ),
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                  widget.contact.displayName,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

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

                            trailing: IconButton(
                              icon: Icon(Icons.sms_outlined),
                              onPressed: () async {
                                final Uri uri = Uri(scheme: 'sms', path: phone.number);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                                } else {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('Erro ao abrir o app de SMS')
                                        )
                                    );
                                  }
                                }
                              },
                              tooltip: "Enviar SMS",
                            ),

                            onTap: (){
                              makePhoneCall(phone.normalizedNumber, context);
                            },

                            // Copia número para a Área de Transferência
                            onLongPress: () {
                              Clipboard.setData(ClipboardData(text: phone.number));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("'${phone.number}' copiado para a Área de Transferência")),
                              );
                            },
                          );
                        }),

                        // E-mails
                        Visibility(visible: (widget.contact.emails.isNotEmpty && widget.contact.phones.isNotEmpty), child: Divider()),
                        ...widget.contact.emails.asMap().entries.map((entry) {
                          final index = entry.key;
                          final email = entry.value;

                          return ListTile(
                            leading: index == 0 ? Icon(Icons.email_outlined, size: 26) : const SizedBox.shrink(),
                            title: Text(email.address),
                            subtitle: Text(_emailLabelToString[email.label] ?? 'Outro'),

                            onTap: () async {
                              final Uri uri = Uri(scheme: 'mailto', path: email.address);
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri, mode: LaunchMode.externalApplication);
                              } else {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Erro ao abrir o app de e-mail')
                                      )
                                  );
                                }
                              }
                            },

                            onLongPress: (){
                              Clipboard.setData(ClipboardData(text: email.address));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("'${email.address}' copiado para a Área de Transferência")),
                              );
                            },
                          );
                        }),

                        Visibility(visible: widget.contact.addresses.isNotEmpty, child: Divider()),
                        // Endereços
                        ...widget.contact.addresses.asMap().entries.map((entry) {
                          final index = entry.key;
                          final address = entry.value;

                          return ListTile(
                            leading: index == 0 ? Icon(Icons.location_on_outlined, size: 26) : const SizedBox.shrink(),
                            title: Text(address.address),
                            subtitle: Text(_addressLabelToString[address.label] ?? 'Outro'),

                            onTap: (){},

                            onLongPress: (){
                              Clipboard.setData(ClipboardData(text: address.address));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("'${address.address}' copiado para a Área de Transferência")),
                              );
                            },
                          );
                        }),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 0.1),

                TextFormField(
                  initialValue: widget.contact.notes.single.note ?? 'Sem notas',
                  enabled: false,
                  readOnly: true,
                  maxLines: null, // Permite múltiplas linhas se necessário
                  decoration: InputDecoration(
                    label: Text('Notas',
                      style: TextStyle(fontSize: 18),
                    ),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 24),
              ]
            ),
          )
        ),
      )
    );
  }
}