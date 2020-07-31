import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Firestore.instance
            .collection('chats/pjNxxkwaivMCyMqNB2TU/messages')
            .snapshots(),
        builder: (ctx, stremSnapshot) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) => Container(
              padding: EdgeInsets.all(8),
              child: Text('Hello'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
