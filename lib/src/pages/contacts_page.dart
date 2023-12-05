import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Contact> contacts = [];

  @override
  void initState() {
    getContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          Contact contact = contacts[index];
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.indigoAccent
              ),
              child: Text(contact.initials()),
            ),
            title: Text(contact.displayName ?? ""),
            trailing: IconButton(onPressed: () {
              deleteContact(contact);
            },
                icon: Icon(Icons.delete,)),

          );
        },

      ),
    );
  }

  Future<void> getContacts() async {
    PermissionStatus status = await Permission.contacts.request();
    if (status.isGranted) {
      await loadContacts();
    }
  }


  Future<void> loadContacts() async {
    List<Contact> contactTemp = await ContactsService.getContacts();
    setState(() {
      contacts = contactTemp;
    });
  }

  Future<void> deleteContact(Contact contact) async {
    await ContactsService.deleteContact(contact);
    await loadContacts();
  }
}
