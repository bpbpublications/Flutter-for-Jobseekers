import 'package:flutter/material.dart';

void main() {
  runApp(const ContactsApp());
}

class Contact {
  final String name;
  final String email;

  const Contact({
    required this.name,
    required this.email,
  });
}

class ContactDetailsScreen extends StatelessWidget {
  final Contact contact;

  const ContactDetailsScreen({
    Key? key,
    required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                contact.email,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactsApp extends StatefulWidget {
  const ContactsApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ContactsAppState();
}

class ContactsListScreen extends StatelessWidget {
  final List<Contact> contacts;
  final ValueChanged<Contact> onTapped;

  const ContactsListScreen({
    Key? key,
    required this.contacts,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (final Contact contact in contacts)
            ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.email),
              onTap: () => onTapped(contact),
            )
        ],
      ),
    );
  }
}

class _ContactsAppState extends State<ContactsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      home: Container(),
    );
  }
}
