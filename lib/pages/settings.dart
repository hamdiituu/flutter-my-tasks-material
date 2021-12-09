import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.today),
                title: const Text(
                  'Planing',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.done),
                title: Text(
                  'Done',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.fmd_bad),
                title: const Text(
                  'Lasted',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                trailing: const Icon(
                  Icons.arrow_right,
                  size: 40,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
