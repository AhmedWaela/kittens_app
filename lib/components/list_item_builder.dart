import 'package:flutter/material.dart';
import 'package:kittens_app/components/kittens.dart';
import 'package:kittens_app/components/dialog_builder.dart';



Widget listItemBuilder(BuildContext context, int index) {
  return GestureDetector(
    onTap: () => showDialog(
      context: context,
      builder: (context) => dialogBuilder(
        context,
        kittens[index],
      ),
    ),
    child: Container(
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        kittens[index].name,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    ),
  );
}
