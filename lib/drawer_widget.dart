import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration:  BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header')
          ),
          ListTile(
            title: const Text('Toilets'),
            onTap: (){
              print('Show Toilets in Map Screen');
              Navigator.pop(context);
              Navigator.pushNamed(context, 'toilets-map');
            },
          ),
          ListTile(
            title: const Text('Add Desludge Record'),
            onTap: (){
              print('Show Add Desludge Record page');
              Navigator.pop(context);

            },
          ),
          ListTile(
            title: const Text('Add Complaint'),
            onTap: (){
              print('Show Add Complaint page');
              Navigator.pop(context);
            },
          )

        ],
      ),
    );
  }
}
