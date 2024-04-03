import 'package:flutter/material.dart';
import 'package:kittens_app/models/kitten_model.dart';

Widget dialogBuilder(BuildContext context, Kitten kitten) {
  ThemeData localTheme = Theme.of(context);
  return SimpleDialog(
    contentPadding: EdgeInsets.zero,
    children: [
      Image.network(
        kitten.imageUrl,
        fit: BoxFit.fill,
      ),
      Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              kitten.name,
              style: localTheme.textTheme.headline3,
            ),
            Text(
              '${kitten.age} months old',
              style: localTheme.textTheme.subtitle1?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              kitten.description,
              style: localTheme.textTheme.bodyLarge,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Wrap(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'I\'M ALLERGIC',
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {
                      print(
                        'adopt',
                      );
                    },
                    child: const Text(
                      'Adopt',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}