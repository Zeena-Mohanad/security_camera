import 'package:flutter/material.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
    );
  }
}