import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/app/app_theme.dart';
import 'package:music_app/views/profile_view/login_screen.dart';

class AppView extends StatelessWidget {
  const AppView({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(context),
      drawer: _drawerWidget(context),
      body: navigationShell, // Varsayılan içerik
    );
  }

  Drawer _drawerWidget(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.theme.scaffoldBackgroundColor,
            ),
            child: Center(
              child: Image.asset('assets/images/app_logo.png'),
            ),
          ),
          ListTile(
            title: const Text('Profil'),
            selected: navigationShell.currentIndex == 0,
            onTap: () {
              Navigator.pop(context);
              firebase_auth.User? user =
                  firebase_auth.FirebaseAuth.instance.currentUser;
              if (user == null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                navigationShell.goBranch(0);
              }
            },
          ),
          ListTile(
            title: const Text('Keşfet'),
            selected: navigationShell.currentIndex == 1,
            onTap: () {
              Navigator.pop(context);
              navigationShell.goBranch(1);
            },
          ),
          ListTile(
            title: const Text('Hakkında'),
            selected: navigationShell.currentIndex == 2,
            onTap: () {
              Navigator.pop(context);
              navigationShell.goBranch(2);
            },
          ),
          const SizedBox(height: 390),
          const Center(child: Text('SoundClub©')),
        ],
      ),
    );
  }

  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Profil';
      case 1:
        return 'Keşfet';
      case 2:
        return 'Hakkında';
      default:
        return 'Ana Ekran';
    }
  }

  AppBar _appBarWidget(BuildContext context) {
    final String title = _getTitleForIndex(navigationShell.currentIndex);

    return AppBar(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      backgroundColor: AppTheme.theme.scaffoldBackgroundColor,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
    );
  }
}
