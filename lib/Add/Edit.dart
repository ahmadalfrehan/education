import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';

class Edit extends StatelessWidget {
  var index;
  List list = [];

  Edit(this.index, this.list, {Key? key}) : super(key: key);
  final nameController = TextEditingController();
  var phoneController = TextEditingController();
  final classController = TextEditingController();
  final divisionController = TextEditingController();
  final dateController = TextEditingController();
  final titleOfLessonController = TextEditingController();
  final itemController = TextEditingController();
  final planningController = TextEditingController();
  final executionController = TextEditingController();
  final calenderController = TextEditingController();
  final cAhRController = TextEditingController();
  final planningFieldController = TextEditingController();
  final scientificFieldController = TextEditingController();
  final educationalFieldController = TextEditingController();
  var Far = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalUpdateSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('updated successfully'),
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
      },
      builder: (context, state) {
        var E = Education.get(context);
        var c = Education.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFFECF0F3),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color(0xFF0b4972),
            title: const Text(
              'Edit',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                //fontSize: 18,
              ),
            ),
            actions: [
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
              )
            ],
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              child: Form(
                key: Far,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormF("تعديل الاسم ", Icons.person, nameController, c,
                          list[index]['name']),
                      TextFormF("تعديل المدرسة ", Icons.person, phoneController,
                          c, list[index]['phone']),
                      TextFormF("تعديل الصف", Icons.info_outline,
                          classController, c, list[index]['class']),
                      TextFormF("تعديل الشعبة", Icons.phone, divisionController,
                          c, list[index]['division']),
                      TextFormF("تعديل التاريخ", Icons.price_check,
                          dateController, c, list[index]['date']),
                      TextFormF(
                          "تعديل عنوان الدرس ",
                          Icons.price_change,
                          titleOfLessonController,
                          c,
                          list[index]['titleOfLesson']),
                      TextFormF("تعديل المادة ", Icons.price_change,
                          itemController, c, list[index]['item']),
                      textFormF('تعديل التخطيط', planningController, E,
                          list[index]['planning']),
                      textFormF(
                          'تعديل التنفيذ (طرائق التدريس والتمكن من المادة)',
                          executionController,
                          E,
                          list[index]['execution']),
                      textFormF('تعديل التقويم البنائي والنهائي والغلق',
                          calenderController, E, list[index]['calender']),
                      textFormF('تعديل إدارة الصف والعلاقات الإنسانية',
                          cAhRController, E, list[index]['cAhR']),
                      textFormF('تعديل مجال التخطيط', planningFieldController,
                          E, list[index]['planningField']),
                      textFormF(
                          'تعديل المجال العلمي',
                          scientificFieldController,
                          E,
                          list[index]['scientificField']),
                      textFormF(
                          'تعديل المجال التربوي والتقويم',
                          educationalFieldController,
                          E,
                          list[index]['educationalField']),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: c.Color1,
                            width: 2,
                          ),
                          elevation: 0.0,
                          primary: const Color(0xFF0b4972),
                          fixedSize: const Size(350, 40),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          c.saveAndInitialiseVariables();
                          c.updateInTeacherTableDataBase(
                            name: nameController.text,
                            phone: phoneController.text,
                            clas: divisionController.text,
                            division: classController.text,
                            date: dateController.text,
                            titleOfLesson: titleOfLessonController.text,
                            item: itemController.text,
                            cAhR: cAhRController.text,
                            calender: calenderController.text,
                            educationalField: educationalFieldController.text,
                            execution: executionController.text,
                            planning: planningController.text,
                            planningField: planningFieldController.text,
                            scientificField: scientificFieldController.text,
                            idTeacher: list[index]['idTeacher'],
                          );
                        },
                        child: const Text(
                          ' Edit ?',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget textFormF(String lab, var x, var c, String hint) {
    x.text = hint;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: lab,
          hintText: hint,
        ),
        minLines: 4,
        maxLines: 10,
        controller: x,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'this field must not be empty';
          }
          return null;
        },
      ),
    );
  }

  Widget TextFormF(String lab, IconData Ic, var x, var c, String hint) {
    x.text = hint;
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          enabled: (lab=='تعديل المدرسة '||lab=='تعديل المادة ')?false:true,
          fillColor: Colors.white,
          filled: true,
          labelText: lab,
          hintText: hint,
        ),
        minLines: 1,
        controller: x,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'this field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
