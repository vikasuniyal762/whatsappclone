// const TabBarMenu({super.key});
import 'package:flutter/material.dart';

class TabBarMenu extends StatelessWidget {
  const TabBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
          child: Icon(
              Icons.groups_sharp,
              size: 64.0,
              color: Colors.redAccent)),
      const Center(
          child: Icon(
              Icons.chat_sharp,
              size: 64.0,
              color: Colors.redAccent)),
      const Center(
          child: Icon(
              Icons.add_alert,
              size: 64.0,
              color: Colors.redAccent)),
      const Center(
          child: Icon(
              Icons.call_sharp,
              size: 64.0,
              color: Colors.redAccent))
    ];
    final _kTabs = <Tab>[
      Tab(icon: Icon(
          Icons.groups_sharp,
          color: Colors.limeAccent)),
      Tab(
          icon: Icon(Icons.chat_sharp,
              color: Colors.red),
          text: 'Chats'),
      Tab(
          icon: Icon(Icons.add_alert,
              color: Colors.orange),
          text: 'Status'),
      Tab(
          icon: Icon(Icons.call_sharp,
              color: Colors.teal),
          text: 'Calls')
    ];

    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Color(0xFF075E54), // Change the color to match WhatsApp
          bottom: TabBar(
            tabs: _kTabs,
            indicatorColor: Colors.white, // Change the indicator color
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your logic here for the message button
          },
          child: Icon(Icons.message),
          backgroundColor: Color(0xFF25D366), // Change the color to match WhatsApp
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TabBarMenu(),
  ));
}
