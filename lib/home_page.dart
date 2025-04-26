import 'package:flutter/material.dart';
import 'package:xebilson/contacts_page.dart';
import 'package:xebilson/favorites_page.dart';
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

  // TODO (Nav para página de discagem direta)
  void _directCall() {
    print("TODO");
  }

  @override
  void initState() {
    super.initState();
    _pages = [
      FavoritesPage(),
      ContactsPage(searchController: searchController),
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
              prefixIcon: Icon(Icons.search, color: Colors.white70),
              hintText: 'Buscar...',
              hintStyle: TextStyle(color: Colors.white70),
              filled: true,
              fillColor: Colors.white24,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
                ),
              ),
            style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
        onPressed: _directCall,
        tooltip: 'Discagem rápida',
        child: const Icon(Icons.dialpad),
      ),
    );
  }
}
