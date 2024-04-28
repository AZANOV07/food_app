import 'package:flutter/material.dart';
import 'package:food_app/screen/screen_1.dart';
import 'package:food_app/service/service.dart';
import 'package:food_app/widgets/colors.dart';

import 'locator.dart';
import 'model/model.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            'ваши заказы',
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            'у вас нет заказов',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ],
      )),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'ваша корзина пуста',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 600,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 155, vertical: 24),
                    backgroundColor: green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'to shop',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(70.0),
          child: Text(
            'пока что нет уведомлений',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'ваши лайки',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
        ),
      ),
    );
  }
}
