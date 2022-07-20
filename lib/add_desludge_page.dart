import 'package:flutter/material.dart';

class AddDesludgePage extends StatefulWidget {
  const AddDesludgePage({Key? key}) : super(key: key);

  @override
  State<AddDesludgePage> createState() => _AddDesludgePageState();
}

class _AddDesludgePageState extends State<AddDesludgePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: const Center(
        child:  Text('Add Complaint page'),
      ),
    );
  }
}
