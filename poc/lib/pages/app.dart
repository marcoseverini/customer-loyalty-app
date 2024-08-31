import 'package:flutter/material.dart';
import 'home.dart';
import 'tessera.dart';
import 'calendario.dart';
import 'news.dart';
import 'opzioni.dart';

// ignore: use_key_in_widget_constructors
class App extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState!.maybePop();

        // ignore: avoid_print
        print(
            // ignore: prefer_interpolation_to_compose_strings
            'isFirstRouteInCurrentTab: ' + isFirstRouteInCurrentTab.toString());

        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 96,
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 44.25,
                  child: Icon(Icons.store_outlined),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 44.25,
                  child: Icon(Icons.feed_outlined),
                ),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 44.25,
                  child: Icon(Icons.event_outlined),
                ),
                label: 'Calendario',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 44.25,
                  child: Icon(Icons.credit_card_outlined),
                ),
                label: 'Tessera',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 44.25,
                  child: Icon(Icons.account_circle_outlined),
                ),
                label: 'Opzioni',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            showUnselectedLabels: true,
            selectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
            _buildOffstageNavigator(4),
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          const Catalogo(),
          const NewsPage(),
          const CalendarioPage(),
          const TesseraPage(),
          const OpzioniPage(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
}
