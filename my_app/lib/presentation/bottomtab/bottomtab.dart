import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_nav_cubit.dart';
import 'package:my_app/presentation/feed_screen/feed_screen.dart';
import 'package:my_app/presentation/content_screen/content_screen.dart';
import 'package:my_app/presentation/market_screen/market_screen.dart';
import 'package:my_app/presentation/search_screen/search_screen.dart';
import 'package:my_app/presentation/calendar_screen/calendar_screen.dart';

class BottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => BottomNavCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MainPage(),
        ));
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  /// Create a list of pages to make the code shorter and better readability
  ///
  final _pageNavigation = [
    FeedScreen(),
    ContentScreen(),
    MarketScreen(),
    SearchScreen(),
    CalendarScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBody(int index) {
    /// Check if index is in range
    /// else return Not Found widget
    ///

    return _pageNavigation.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.date_range), label: "Task"),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
        BottomNavigationBarItem(icon: Icon(Icons.notification_important), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
