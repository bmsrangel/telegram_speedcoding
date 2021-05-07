import 'package:flutter/material.dart';

import 'core/app_colors.dart';
import 'widgets/chat_tile_widget.dart';
import 'widgets/drawer_header_widget.dart';
import 'widgets/drawer_item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Telegram'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ListView.separated(
        separatorBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(left: 85.0),
          child: Divider(),
        ),
        itemCount: 20,
        itemBuilder: (_, __) => ChatTileWidget(
          imageUrl: 'https://avatars.githubusercontent.com/u/39227201?v=4',
          tileName: 'Flutter is Life',
          lastMessageSender: 'John Doe',
          lastMessageContent: 'Hello!',
          lastMessageTime: '22:07',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {},
        backgroundColor: AppColors.floatingActionButtonColor,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeaderWidget(
              userName: 'Bruno Rangel',
              imageUrl: 'https://avatars.githubusercontent.com/u/39227201?v=4',
              mobile: '+55 (99) 99999-9999',
            ),
            DrawerItemWidget(
              icon: Icons.people_alt_outlined,
              title: 'Novo Grupo',
            ),
            DrawerItemWidget(
              icon: Icons.person_outline,
              title: 'Contatos',
            ),
            DrawerItemWidget(
              icon: Icons.call_outlined,
              title: 'Chamadas',
            ),
            DrawerItemWidget(
              icon: Icons.nature_people_sharp,
              title: 'Pessoas Próximas',
            ),
            DrawerItemWidget(
              icon: Icons.bookmark_border,
              title: 'Mensagens Salvas',
            ),
            DrawerItemWidget(
              icon: Icons.settings_outlined,
              title: 'Configurações',
            ),
            Divider(),
            DrawerItemWidget(
              title: 'Convidar Amigos',
              icon: Icons.person_add_alt_1_outlined,
            ),
            DrawerItemWidget(
              title: 'Recursos do Telegram',
              icon: Icons.help_outline,
            ),
          ],
        ),
      ),
    );
  }
}
