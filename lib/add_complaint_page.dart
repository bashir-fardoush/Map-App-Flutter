import 'package:flutter/material.dart';

class AddComplaintPage extends StatefulWidget {
  const AddComplaintPage({Key? key}) : super(key: key);

  @override
  State<AddComplaintPage> createState() => _AddComplaintPageState();
}

class _AddComplaintPageState extends State<AddComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blue.shade300,
    child:  Center(
       child: const Text('Add Complaint page'),
    ),
    );

  }
}
