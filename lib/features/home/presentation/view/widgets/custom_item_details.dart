import 'package:flutter/material.dart';
import 'package:irada_center/features/home/data/models/students_model/students_model/doc.dart';

class CustomItemDetails extends StatelessWidget {
  const CustomItemDetails({
    super.key,
    required this.doc,
  });
  final Doc doc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(doc.name!),
                  Text(doc.age!.toString()),
                  Text(doc.phoneNumber!),
                  Text(doc.studentId!),
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
