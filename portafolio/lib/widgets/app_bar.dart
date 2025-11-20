import 'package:flutter/material.dart';
import '../screens/contact.dart'; 

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        // Botón que lleva a la pantalla de Contacto/Firma
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          tooltip: 'Firma y Contacto',
          onPressed: () {
        
            Navigator.of(context).pushNamed(ContactScreen.routeName);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}