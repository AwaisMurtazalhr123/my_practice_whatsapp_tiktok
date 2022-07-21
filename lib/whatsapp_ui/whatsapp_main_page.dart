import 'package:flutter/material.dart';
import 'package:whatsapp_tiktok/whatsapp_ui/chat_page.dart';

class WhatsappMainPage extends StatelessWidget {
  const WhatsappMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          backgroundColor: Color(0xff163c3d),
          title: Text('Whatsapp'),
          actions: [
            PopupMenuButton(itemBuilder: (_) {
              return [
                PopupMenuItem(child: Text('Settings')),
                PopupMenuItem(child: Text('Settings')),
                PopupMenuItem(child: Text('Settings')),
                PopupMenuItem(child: Text('Settings')),
              ];
            })
          ],
          bottom: TabBar(indicatorColor: Colors.black, tabs: [
            Tab(
              icon: Icon(Icons.camera_enhance),
            ),
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            )
          ]),
        ),
        body: TabBarView(children: [
          Text(
            'Camera',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          ChatPage(),
          Text(
            'Status',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Calls',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ]),
      ),
    );
  }
}
