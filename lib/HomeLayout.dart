import 'package:education_evaluation/sharedHELper.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/cubit.dart';
import 'Cubit/states.dart';
import 'constant.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);

  var far = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BlocConsumer<Education, Educational>(
          listener: (context, state) {},
          builder: (context, state) {
            var c = Education.get(context);
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                drawer: Drawer(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: const BoxDecoration(
                          color: Color(0xFF0b4972),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 20, top: 20, left: 0, bottom: 0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width >= 400
                                    ? 10
                                    : 5,
                              ),
                              Image.asset('assets/logo.png', scale: 1.5),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'الجمهورية العربية السورية \n وزارة التربية ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width <= 350
                                            ? 8
                                            : 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                      elevation: 0,
                        minWidth: double.infinity,
                        color: Color(0xFF0b4972),
                        onPressed: () async {
                          if (homeScreenLikeMe == false) {
                            await Shard.saveData(
                                    key: 'homeScreenLikeME', value: true)
                                .then((value) {
                              homeScreenLikeMe =
                                  c.changeBoolean(homeScreenLikeMe, true);
                            });
                          } else if (homeScreenLikeMe == true) {
                            await Shard.saveData(
                                    key: 'homeScreenLikeME', value: false)
                                .then((value) {
                              homeScreenLikeMe =
                                  c.changeBoolean(homeScreenLikeMe, false);
                            });
                          }
                        },
                        child: const Text(
                          'تغيير شكل الشاشة الرئيسية؟',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        elevation: 0,
                        minWidth: double.infinity,
                        color: Color(0xFF0b4972),
                        onPressed: () async {
                        },
                        child: const Text(
                          'تغيير حجم الخط؟',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                appBar: AppBar(
                  elevation: 0.0,
                  titleSpacing: 0,
                  backgroundColor: const Color(0xFF0b4972),
                  centerTitle: true,
                  title: Text(
                    c.titles[c.currrentIndex],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                body: isAllowedToShown == null
                    ? Container(
                        height: MediaQuery.of(context).size.height,
                        color: const Color(0xFFECF0F3),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 40),
                              const Center(
                                child: Text(
                                  'اختر المحافظة والمادة ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        menuMaxHeight:
                                            MediaQuery.of(context).size.height /
                                                2,
                                        alignment: Alignment.center,
                                        elevation: 15,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        hint: Text(
                                          government,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        items: Education.get(context)
                                            .government
                                            .map((String value) {
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Text(value.toString()),
                                          );
                                        }).toList(),
                                        onChanged: (newValue) async {
                                          await Shard.saveData(
                                                  key: 'government',
                                                  value: newValue)
                                              .then(
                                            (value) {
                                              government =
                                                  Education.get(context)
                                                      .changeStringV(government,
                                                          newValue.toString());
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        menuMaxHeight:
                                            MediaQuery.of(context).size.height /
                                                2,
                                        alignment: Alignment.center,
                                        elevation: 15,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        hint: Text(
                                          item,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        items: Education.get(context)
                                            .items
                                            .map((String value) {
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Text(value.toString()),
                                          );
                                        }).toList(),
                                        onChanged: (newValue) async {
                                          await Shard.saveData(
                                                  key: 'items', value: newValue)
                                              .then(
                                            (value) {
                                              item = Education.get(context)
                                                  .changeStringV(item,
                                                      newValue.toString());
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    side: const BorderSide(),
                                    primary: const Color(0xFF0b4972),
                                    elevation: 7,
                                    shape:
                                        const StadiumBorder(side: BorderSide()),
                                    fixedSize: const Size(300, 50),
                                  ),
                                  onPressed: () async {
                                    if (!Education.get(context)
                                        .government
                                        .contains(government)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('اختر المحافظة'),
                                        ),
                                      );
                                    }

                                    if (!Education.get(context)
                                        .items
                                        .contains(item)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('اختر المادة'),
                                        ),
                                      );
                                    }
                                    if (Education.get(context)
                                            .government
                                            .contains(government) &&
                                        Education.get(context)
                                            .items
                                            .contains(item)) {
                                      bool t = true;
                                      await Shard.saveData(
                                              key: 'isAllow', value: false)
                                          .then(
                                        (value) {
                                          isAllowedToShown =
                                              Education.get(context)
                                                  .changeBoolean(t, false);
                                        },
                                      );
                                    }
                                  },
                                  child: const Text(
                                    "حفظ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        color: const Color(0xFFECF0F3),
                        child: c.list[c.currrentIndex]),
                bottomNavigationBar: CurvedNavigationBar(
                  index: c.currrentIndex,
                  items: const <Widget>[
                    Icon(Icons.home_outlined,
                        size: 30, color: Color(0xFFd4b614)),
                    Icon(Icons.school_outlined,
                        size: 30, color: Color(0xFFd4b614)),
                    Icon(
                      Icons.add_circle,
                      size: 50,
                      color: Color(0xFF0b4972),
                    ),
                    Icon(Icons.search, size: 30, color: Color(0xFFd4b614)),
                    Icon(Icons.send_outlined,
                        textDirection: TextDirection.ltr,
                        size: 30,
                        color: Color(0xFFd4b614)),
                  ],
                  color: Colors.white,
                  buttonBackgroundColor: c.currrentIndex == 2
                      ? Colors.white
                      : const Color(0xFF0b4972),
                  backgroundColor: const Color(0xFFECF0F3),
                  animationCurve: Curves.easeInOut,
                  animationDuration: const Duration(milliseconds: 600),
                  onTap: (index) {
                    c.ChangeBottomNav(index);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
