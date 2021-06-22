import 'package:flutter/material.dart';
import 'package:crowth_app/components/components.dart';

class ExplorerTab extends StatefulWidget {
  const ExplorerTab({Key? key}) : super(key: key);

  @override
  _ExplorerTabState createState() => _ExplorerTabState();
}

class _ExplorerTabState extends State<ExplorerTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SearchBox(),
            IconSelection(),
            BannerImage(),
            SectionTitle(),
            CardSliders(),
            SectionTitle(),
          ],
        ),
      ),
    );
  }
}
