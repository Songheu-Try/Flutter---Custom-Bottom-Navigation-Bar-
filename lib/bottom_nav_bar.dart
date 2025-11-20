import 'package:flutter/material.dart';

void main() => runApp(BottomBar());

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _page = <Widget>[
    CallsPage(),
    CameraPage(),
    ChatsPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(_getAppBarTitle()),
      ),
      body: _page[_selectedIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  String _getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'Calls';
      case 1:
        return 'Camera';
      case 2:
        return 'Chats';
      case 3:
        return 'Setting';
      default:
        return 'App';
    }
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camara'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}

// Page for Calls tab
class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call, size: 64, color: Colors.blue),
          SizedBox(height: 16),
          Text(
            'Calls Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text('Recent calls will appear here'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Make a Call')),
        ],
      ),
    );
  }
}

// Page for Camera tab
class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.camera_alt, size: 64, color: Colors.green),
          SizedBox(height: 16),
          Text(
            'Camera Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text('Camera interface will be here'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Take Photo')),
        ],
      ),
    );
  }
}

// Page for Chats tab
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.chat, size: 64, color: Colors.orange),
          SizedBox(height: 16),
          Text(
            'Chats Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text('Your conversations will appear here'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Start New Chat')),
        ],
      ),
    );
  }
}

// Page for Setting tab
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 64, color: Colors.pink),
          SizedBox(height: 16),
          Text(
            'Setting Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text('Your conversations will appear here'),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: Text('Start Settings')),
        ],
      ),
    );
  }
}

