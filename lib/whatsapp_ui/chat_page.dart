import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...List.generate(
            200,
            (index) => ListTile(
              leading: CircleAvatar(
                child: Text('$index'),
              ),
              title: Text('Ali $index'),
              subtitle: Text('What is goin on your side'),
              trailing: Icon(Icons.check_box_outlined),
            ),
          )
        ],
      ),
    );
  }
}
