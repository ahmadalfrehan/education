import 'package:education_evaluation/Search/Search.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/cubit.dart';
import 'Cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BlocConsumer<Education, Educational>(
          listener: (context, state) {},
          builder: (context, state) {
            var c = Education.get(context);
            return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                titleSpacing: 0,
                backgroundColor:  const Color(0xFF0b4972),
                centerTitle: true,
                title: Text(
                  c.titles[c.currrentIndex],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: Container(
                  color: const Color(0xFFECF0F3),
                  child: c.list[c.currrentIndex]),
              bottomNavigationBar: CurvedNavigationBar(
                index: c.currrentIndex,
                items: const <Widget>[
                  Icon(Icons.home_outlined, size: 30,color: Color(0xFFd4b614)),
                  Icon(Icons.school_outlined, size: 30,color: Color(0xFFd4b614)),
                  Icon(Icons.add_circle, size: 50, color: Color(0xFF0b4972),),
                  Icon(Icons.search, size: 30,color: Color(0xFFd4b614)),
                  Icon(Icons.send_outlined,textDirection: TextDirection.ltr, size: 30,color: Color(0xFFd4b614)),
                ],
                color: Colors.white,
                buttonBackgroundColor: c.currrentIndex ==2?Colors.white: const Color(0xFF0b4972),
                backgroundColor: const Color(0xFFECF0F3),
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 600),
                onTap: (index) {
                  c.ChangeBottomNav(index);
                },
              ),
            );
          },
        );
      },
    );
  }
}
