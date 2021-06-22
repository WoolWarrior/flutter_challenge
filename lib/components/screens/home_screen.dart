import 'package:flutter/material.dart';
import 'package:crowth_app/components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<String> TAB_LIST = [
    'Home',
    'Explorer',
    'Net of Nets',
    'Activity',
    'Post a Job'
  ];

  static final List<Widget> _widgetOptions = <Widget>[
    Text('home placeholder'),
    ExplorerTab(),
    Text('Net of Nets placeholder'),
    Text('Activity placeholder'),
    Text('Post a Job placeholder'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: HomeAppBar(
        title: TAB_LIST[_selectedIndex],
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Explorer',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_outline,
                color: Colors.black,
              ),
              label: 'Net of Nets',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.black,
              ),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_add_outlined,
                color: Colors.black,
              ),
              label: 'Post a Job',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
