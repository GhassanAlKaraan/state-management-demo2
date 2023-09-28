import 'package:flutter/material.dart';
import 'package:vanilla_contacts/ChangeSelected.dart';
import 'package:vanilla_contacts/components/my_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        title: const Text("Home Page"),
        leading: const Icon(Icons.home),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Consumer<ChangeSelected>(
              builder: (context, changeSelected, child) {
                return Text(
                  "Selected: ${changeSelected.selection}",
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            const SizedBox(height: 10),
            const MyList(),
          ],
        ),
      ),
    );
  }
}
