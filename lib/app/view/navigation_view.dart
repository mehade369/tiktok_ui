import 'package:flutter/material.dart';

import 'package:tiktok_ui/home/home.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({final Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  var _selectedIndex = 0;

  void setIndex(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomePage(),
            Center(
              child: Text('Discovery'),
            ),
            Center(
              child: Text('Add New Videos'),
            ),
            Center(
              child: Text('Inbox'),
            ),
            Center(
              child: Text('Profile'),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox.fromSize(
          size: const Size.fromHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationAction(
                icon: Icons.home,
                title: 'Home',
                onPressed: () => setIndex(0),
              ),
              NavigationAction(
                icon: Icons.search,
                title: 'Discovery',
                onPressed: () => setIndex(1),
              ),
              InkResponse(
                onTap: () => setIndex(2),
                child: Container(
                  width: 60,
                  height: 35,
                  padding: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              NavigationAction(
                icon: Icons.inbox,
                title: 'Inbox',
                onPressed: () => setIndex(3),
              ),
              NavigationAction(
                icon: Icons.person,
                title: 'Profile',
                onPressed: () => setIndex(4),
              ),
            ],
          ),
        ),
      );
}

class NavigationAction extends StatelessWidget {
  const NavigationAction({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;

  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) => InkResponse(
        // borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(title),
          ],
        ),
      );
}
