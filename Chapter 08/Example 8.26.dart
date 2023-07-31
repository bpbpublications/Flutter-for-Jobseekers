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

class ContactRouteInformationParser
    extends RouteInformationParser<ContactRoutePath> {
  @override
  Future<ContactRoutePath> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final Uri uri = Uri.parse(routeInformation.location!);
    // Handle '/'
    if (uri.pathSegments.isEmpty) {
      return ContactRoutePath.home();
    }

    // Handle '/contact/:id'
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'contact') return ContactRoutePath.unknown();
      String remaining = uri.pathSegments[1];
      int? id = int.tryParse(remaining);
      if (id == null) return ContactRoutePath.unknown();
      return ContactRoutePath.details(id);
    }

    // Handle unknown routes
    return ContactRoutePath.unknown();
  }

  @override
  RouteInformation? restoreRouteInformation(ContactRoutePath configuration) {
    if (configuration.isUnknown) {
      return const RouteInformation(location: '/404');
    }
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/');
    }
    if (configuration.isDetailsPage) {
      return RouteInformation(location: '/contact/${configuration.id}');
    }
    return null;
  }
}

class ContactRoutePath {
  final int? id;
  final bool isUnknown;

  ContactRoutePath.details(this.id) : isUnknown = false;

  ContactRoutePath.home()
      : id = null,
        isUnknown = false;

  ContactRoutePath.unknown()
      : id = null,
        isUnknown = true;

  bool get isDetailsPage => id != null;

  bool get isHomePage => id == null;
}

class ContactRouterDelegate extends RouterDelegate<ContactRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<ContactRoutePath> {
  static const List<Contact> contacts = [
    Contact(name: 'Alice', email: 'alice@flutter.dev'),
    Contact(name: 'Bob', email: 'bob@flutter.dev'),
    Contact(name: 'Charlie', email: 'charlie@flutter.dev'),
  ];

  @override
  final GlobalKey<NavigatorState> navigatorKey;
  bool show404 = false;
  Contact? _selectedContact;

  ContactRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  ContactRoutePath get currentConfiguration {
    if (show404) {
      return ContactRoutePath.unknown();
    }
    return _selectedContact == null
        ? ContactRoutePath.home()
        : ContactRoutePath.details(contacts.indexOf(_selectedContact!));
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: const ValueKey('ContactsListPage'),
          child: ContactsListScreen(
            contacts: contacts,
            onTapped: _handleContactTapped,
          ),
        ),
        if (_selectedContact != null)
          ContactDetailsPage(contact: _selectedContact!),
        if (show404)
          const MaterialPage(
            key: ValueKey('UnknownPage'),
            child: UnknownScreen(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        _selectedContact = null;
        show404 = false;
        notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(ContactRoutePath configuration) async {
    if (configuration.isUnknown) {
      _selectedContact = null;
      show404 = true;
      return;
    }

    if (!configuration.isDetailsPage) {
      _selectedContact = null;
    }
    if (configuration.id == null) {
      _selectedContact = null;
      show404 = false;
      return;
    }
    if (configuration.id! < 0 || configuration.id! > contacts.length - 1) {
      show404 = true;
      return;
    }

    _selectedContact = contacts[configuration.id!];

    show404 = false;
  }

  void _handleContactTapped(Contact contact) {
    _selectedContact = contact;
    notifyListeners();
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
