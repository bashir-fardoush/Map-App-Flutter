import 'package:camp_map/add_complaint_page.dart';
import 'package:camp_map/add_desludge_page.dart';
import 'package:camp_map/drawer_widget.dart';
import 'package:camp_map/map_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return MapPage();
      case 1: return AddDesludgePage();
      case 2: return AddComplaintPage();
      default: return Text("Error");
    }
  }
  _onDrawerItemSelected(int pos){
    setState(()=> _selectedDrawerIndex = pos);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      drawer: Drawer(
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
              selected: _selectedDrawerIndex == 0,
              onTap: (){
                print('Show Toilets in Map Screen');
                _onDrawerItemSelected(0);
              },
            ),
            ListTile(
              title: const Text('Add Desludge Record'),
              selected: _selectedDrawerIndex ==1,
              onTap: (){
                print('Show Add Desludge Record page');
                _onDrawerItemSelected(1);

              },
            ),
            ListTile(
              title: const Text('Add Complaint'),
              selected: _selectedDrawerIndex == 2,
              onTap: (){
                print('Show Add Complaint page');
                _onDrawerItemSelected(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: const Center(
        child: Text('My Page'),
      ),
    );
  }
}

