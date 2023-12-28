// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/search_box.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            SearchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      bottom: 20,
                    ),
                    child: Text(
                      'Reminders',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  ToDoItem(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.bgcolor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: AppColors.black,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}
