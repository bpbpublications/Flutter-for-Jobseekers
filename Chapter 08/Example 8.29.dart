import 'package:beamer/beamer.dart';
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

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Oops.'),
      ),
    );
  }
}

class _ContactsAppState extends State<ContactsApp> {
  static const List<Contact> contacts = [
    Contact(name: 'Alice', email: 'alice@flutter.dev'),
    Contact(name: 'Bob', email: 'bob@flutter.dev'),
    Contact(name: 'Charlie', email: 'charlie@flutter.dev'),
  ];

  final _routerDelegate = BeamerDelegate(
    setBrowserTabTitle: false,
    notFoundRedirectNamed: '/404',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, _, __) => ContactsListScreen(
              contacts: contacts,
              onTapped: (contact) => context.beamToNamed(
                '/contact/${contacts.indexOf(contact)}',
              ),
            ),
        '/contact/:id': (_, state, __) {
          final id = int.parse(state.pathParameters['id']!);
          return BeamPage(
            key: ValueKey('contact-$id'),
            type: BeamPageType.slideRightTransition,
            popToNamed: '/',
            child: ContactDetailsScreen(contact: contacts[id]),
          );
        },
        '/404': (_, __, ___) => const UnknownScreen(),
      },
    ),
    guards: [
      BeamGuard(
        pathPatterns: ['/contact/*'],
        check: (_, beamLocation) {
          final beamState = beamLocation.state as BeamState;
          final idParameter = beamState.pathParameters['id'];
          if (idParameter != null) {
            final id = int.tryParse(idParameter);
            if (id == null || id < 0 || id >= contacts.length) {
              return false;
            }
          }
          return true;
        },
        beamToNamed: (_, __) => '/404',
      )
    ],
  );
  final _routeInformationParser = BeamerParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Contacts App',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
