import 'package:flutter/material.dart';
import 'package:kittens_app/components/kittens.dart';
import 'package:kittens_app/components/list_item_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'Available kittens',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: kittens.length,
        itemExtent: 60,
        itemBuilder: listItemBuilder,
      ),
    );
  }
}
