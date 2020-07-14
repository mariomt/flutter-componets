import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        // children: _createItems(),
        children: _createItemsShort(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> lista = new List<Widget>();
    for (var opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _createItemsShort() {
    return options.map((option) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(option),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
