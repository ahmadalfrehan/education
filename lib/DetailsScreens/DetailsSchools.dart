import 'dart:async';
import 'package:education_evaluation/DetailsScreens/DetailsSchoolMore.dart';
import 'package:education_evaluation/DetailsScreens/TeacherDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Add/Add_Teacher.dart';
import '../Add/Edit.dart';
import '../Add/EditSchool.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';

class Details extends StatelessWidget {
  List list = [];
  final int index;
  final int idSchool;

  Details(this.list, this.index, this.idSchool, {Key? key}) : super(key: key);

  var Scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalUpdateStatusSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('successfully added it archive'),
            ),
          );
          Timer(
            const Duration(seconds: 1),
            () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>  HomeLayout(),
              ),
              (route) => false,
            ),
          );
        }
        if (state is EducationalDeleteSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('successfully deleted the item'),
            ),
          );
        }
      },
      builder: (context, state) {
        var c = Education.get(context);
        return Scaffold(
          key: Scaffoldkey,
          appBar: AppBar(
            elevation: 0.0,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditSchool(index, list),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.edit,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearcH(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ],
            backgroundColor: const Color(0xFF0b4972),
            centerTitle: false,
            title: const Text(
              'Teachers',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            toolbarHeight: MediaQuery.of(context).size.height / 12,
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFECF0F3),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Text(
                                        'اسم المدرسة :' + list[index]['name'],
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              15,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  ' العنوان  : ' +
                                      list[index]['address'].toString(),
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).textScaleFactor *
                                            15,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailsSchoolMore(
                                            list, index, idSchool),
                                      ),
                                    );
                                  },
                                  child: const Text('See More...?',
                                      textDirection: TextDirection.ltr),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        /*decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, -10),
                              blurRadius: 10,
                            ),
                          ],
                          color: Colors.blueGrey,
                          image: DecorationImage(image:AssetImage('build/assets/logo.png') ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(70),
                          ),
                        ),*/
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 10,
                          ),
                          itemCount: c.teachers.length,
                          itemBuilder: (context, index) {
                            return c.teachers[index]['idSchool'] == idSchool
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return TeacherDetails(
                                                list: c.teachers,
                                                index: index,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(4, 7),
                                              blurRadius: 10,
                                            ),
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: const [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                    backgroundColor:
                                                        Color(0xFF0b4972),
                                                    child: Icon(Icons.person)),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  c.teachers[index]['name'],
                                                  style: const TextStyle(
                                                      fontSize: 22),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              c.teachers[index]['class'],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              c.teachers[index]['item'],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              Edit(index,
                                                                  c.teachers),
                                                        ),
                                                      );
                                                    },
                                                    child:
                                                        const Icon(Icons.edit),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: MaterialButton(
                                                    onPressed: () {},
                                                    child: const Icon(
                                                      Icons.send,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: MaterialButton(
                                                    onPressed: () {
                                                      c.deleteFromDataBase(
                                                          id: c.teachers[index]
                                                              ['idTeacher']);
                                                    },
                                                    child: const Icon(
                                                        Icons.delete),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Container();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFF0b4972),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTeacher(
                    index,
                    list,
                  ),
                ),
              );
            },
            child: const Text('Add'),
          ),
        );
      },
    );
  }
}
