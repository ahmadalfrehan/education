import 'dart:async';

import 'package:education_evaluation/Cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Add/Edit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';

class TeacherDetails extends StatelessWidget {
  final List list;
  final int index;

  const TeacherDetails({required this.list, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var E = Education.get(context);
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
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xFF0b4972),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Edit(index, list),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.edit,
                ),
              ),
              IconButton(
                onPressed: () async {},
                icon: const Icon(
                  Icons.send,
                ),
              ),
              IconButton(
                onPressed: () {
                  E.deleteFromDataBase(id: list[index]['idTeacher']);
                },
                icon: const Icon(
                  Icons.delete,
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                      'اسم المدرس : ' + list[index]['name'],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                    Text('المدرسة : ' + list[index]['phone']),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                    Text('المادة : ' + list[index]['item']),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                    Text('الصف  : ' + list[index]['class']),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                        'الشعبة  : ' + list[index]['division']),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                        'المجموع  : ' + list[index]['marks'].toString()),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                    Text('التاريخ  : ' + list[index]['date']),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
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
                                    Text('عنوان الدرس : ' +
                                        list[index]['titleOfLesson']),
                                  ],
                                ),
                              ),
                              //const SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Card(
                    elevation: 20,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'التخطيط : \n' + list[index]['planning'],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                    'التنفيذ (طرائق التدريس والتمكن من المادة) :\n' +
                                        list[index]['execution']),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                    'التقويم البنائي والنهائي والغلق :\n' +
                                        list[index]['calender']),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                    'إدارة الصف والعلاقات الإنسانية : \n' +
                                        list[index]['cAhR']),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text('مجال التخطيط :\n' +
                                    list[index]['planningField']),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text('المجال العلمي : \n' +
                                    list[index]['scientificField']),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(' المجال التربوي والتقويم : \n' +
                                    list[index]['educationalField']),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
