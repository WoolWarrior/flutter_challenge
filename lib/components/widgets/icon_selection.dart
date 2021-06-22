import 'package:flutter/material.dart';

class IconSelection extends StatefulWidget {
  const IconSelection({Key? key}) : super(key: key);

  @override
  _IconSelectionState createState() => _IconSelectionState();
}

class _IconSelectionState extends State<IconSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        height: 68,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_bag_rounded),
                    onPressed: () => {},
                  ),
                  Text('Find Jobs')
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () => {},
                  ),
                  Text('Help Others')
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.people_alt_sharp),
                    onPressed: () => {},
                  ),
                  Text('Find Candidates')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
