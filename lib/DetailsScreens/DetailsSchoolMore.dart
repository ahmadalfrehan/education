import 'dart:async';
import 'package:education_evaluation/Add/EditSchool.dart';
import 'package:education_evaluation/DetailsScreens/TeacherDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Add/Add_Teacher.dart';
import '../Add/Edit.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';
import '../constant.dart';

class DetailsSchoolMore extends StatelessWidget {
  List list = [];
  final int index;
  final int idSchool;

  DetailsSchoolMore(this.list, this.index, this.idSchool, {Key? key})
      : super(key: key);

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
                builder: (context) => HomeLayout(),
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
          Timer(
            const Duration(seconds: 1),
            () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeLayout(),
              ),
              (route) => false,
            ),
          );
        }
      },
      builder: (context, state) {
        var c = Education.get(context);
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color(0xFF0b4972),
            centerTitle: false,
            title: const Text(
              'School Details',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            toolbarHeight: MediaQuery.of(context).size.height / 12,
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'اسم المدرسة: ' + list[index]['name'],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'المحافظة : ' + government.toString(),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Wrap(
                              children: [
                                Text(
                                  ' العنوان  :  ' + list[index]['address'],
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).textScaleFactor *
                                            15,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Text('المدير : ' + list[index]['manager']),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () async {
                              print('phone');
                              await c.makePhoneCall(list[index]['phone']);
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  const Text(' الهاتف : '),
                                  Text(
                                    list[index]['phone'],
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () async {
                              print('phone');
                              await c
                                  .makePhoneCall(list[index]['managerPhone']);
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  const Text(' هاتف المدير : '),
                                  Text(
                                    list[index]['managerPhone'],
                                    style: const TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text(' المرحلة  : ' + list[index]['stage']),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text(' النوع  : ' + list[index]['type']),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
