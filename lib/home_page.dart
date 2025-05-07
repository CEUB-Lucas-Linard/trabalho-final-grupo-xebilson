import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xebilson/contacts_page.dart';
import 'package:xebilson/configs_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1; // Default a página inicial para a de Contatos

  final TextEditingController searchController = TextEditingController();

  late List<Widget> _pages;

  // Discagem direta
  Future<void> _directCall(BuildContext context) async {
    final permission = await Permission.phone.status;
    if (permission.isDenied) {
      final result = await Permission.phone.request();
      if (!result.isGranted) {
        // Usuário negou a permissão, então não faça nada
        return;
      }
    }

    final Uri uri = Uri(scheme: 'tel');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Não foi possível iniciar a ligação para ')),
        );
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      ContactsPage(searchController: searchController, showFavorites: true),
      ContactsPage(searchController: searchController, showFavorites: false),
      ConfigsPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        toolbarOpacity: 1.0,
        title: SizedBox(
          height: 45,
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Buscar...',
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      body: _pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.star_outline),
            selectedIcon: Icon(Icons.star),
            label: 'Favoritos',
          ),
          NavigationDestination(
            icon: Icon(Icons.contacts_outlined),
            selectedIcon: Icon(Icons.contacts),
            label: 'Contatos',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _directCall(context),
        tooltip: 'Discagem rápida',
        child: const Icon(Icons.dialpad),
      ),
    );
  }
}
