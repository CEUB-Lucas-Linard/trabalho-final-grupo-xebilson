import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xebilson/contacts_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 1);
  int currentPageIndex = 1; // Defaulta a página inicial para a de Contatos

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
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        physics: const BouncingScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
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
