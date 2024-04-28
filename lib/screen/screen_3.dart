import 'package:flutter/material.dart';
import 'package:food_app/screen/screen.dart';
import 'package:food_app/tests.dart';
import 'package:food_app/widgets/colors.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key});

  @override
  State<NavigationScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<NavigationScreen> {
  int _selectedIndex =
  0;

  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
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
        backgroundColor: white,
        leading: Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              color: green, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Icon(
              Icons.menu,
              color: white,
              size: 30,
            ),
          ),
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_on,
              size: 30,
              color: green,
            ),
            Text('Kyrgyzstan')
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'заказы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_sharp),
            label: 'уведомление',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'нравится',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black, // Чтобы иконки были черными
      ),
    );
  }
}
