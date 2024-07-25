import 'package:flutter/material.dart';

class WidgetsCustomScreen extends StatefulWidget {
  const WidgetsCustomScreen({super.key});

  @override
  State<WidgetsCustomScreen> createState() => _WidgetsCustomScreenState();
}

class _WidgetsCustomScreenState extends State<WidgetsCustomScreen> {
  final TextEditingController serachController = TextEditingController();
  List<String> listItems = ['primera', 'segunda', 'tercera'];
  var items = [];
  var searchHistory = [];

  @override
  void initState() {
    super.initState();
    serachController.addListener(valueListener);
  }

  @override
  void dispose() {
    serachController.removeListener(valueListener);
    serachController.dispose();
    super.dispose();
  }

  void valueListener() {
    search(serachController.text);
  }

  void search(String value) {
    if (value.isEmpty) {
      setState(() {
        items = listItems;
      });
    } else {
      setState(() {
        items = listItems
            .where((element) =>
                element.toLowerCase().contains(value.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis widgets'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 40),
          child: Column(
            children: [
              SearchBar(
                controller: serachController,
                hintText: 'Buscar..',
                // hintStyle:
                //     const MaterialStatePropertyAll(TextStyle(fontSize: 15)),
                trailing: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300,
                width: 300,
                child: ListView.builder(
                  itemCount: items.isEmpty ? listItems.length : items.length,
                  itemBuilder: ((context, index) {
                    final item =
                        items.isEmpty ? listItems[index] : items[index];
                    return Card(
                      child: Column(
                        children: [
                          Text('Name: $item'),
                          const SizedBox(height: 8),
                          Text(item),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
