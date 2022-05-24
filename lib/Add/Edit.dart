import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';
import '../constant.dart';
import '../main.dart';
import 'AddTeacherMore/EducationField.dart';
import 'AddTeacherMore/Planning.dart';
import 'AddTeacherMore/PlanningField.dart';
import 'AddTeacherMore/ScientificField.dart';
import 'AddTeacherMore/cAhR.dart';
import 'AddTeacherMore/calender.dart';
import 'AddTeacherMore/execution.dart';

class Edit extends StatelessWidget {
  var index;
  List list = [];

  Edit(this.index, this.list, {Key? key}) : super(key: key);
  var Far = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        var E = Education.get(context);
        var c = Education.get(context);
        E.itemEditController.text = item;
        if (E.isAllowedToReBuild) {
          E.nameEditController.text = list[index]['name'];
          E.classEditController.text = list[index]['class'];
          E.divisionEditController.text = list[index]['division'];
          E.dateEditController.text = list[index]['date'];
          E.titleOfLessonEditController.text = list[index]['titleOfLesson'];
        }
        E.isAllowedToReBuild = false;
        E.isAllowedToUpdate = true;
        E.idTeacherForEdit = list[index]['idTeacher'];
        return WillPopScope(
          onWillPop: () async {
            E.isAllowedToReBuild = true;
            return await true;
          },
          child: Scaffold(
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        key: Far,
                        child: Column(
                          children: [
                            TextFormF("تعديل الاسم ", Icons.person,
                                c.nameEditController, c, list[index]['name']),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                30,
                                10,
                                30,
                                10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: DropdownButton(
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
                                        E.schoolName,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      items: E.schools.map((map) {
                                        return DropdownMenuItem<String>(
                                          onTap: () {
                                            E.schoolName =
                                                Education.get(context)
                                                    .changeStringV(
                                              E.schoolName,
                                              map['name'].toString(),
                                            );
                                          },
                                          value: map['idSchool'].toString(),
                                          child: Text(map['name'].toString()),
                                        );
                                      }).toList(),
                                      onChanged: (newValue) async {
                                        print(newValue);
                                        E.idSchoolForAddSchool =
                                            Education.get(context).changeIntV(
                                          E.idSchoolForAddSchool,
                                          int.parse(
                                            newValue.toString(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextFormF("تعديل الصف", Icons.info_outline,
                                c.classEditController, c, list[index]['class']),
                            TextFormF(
                                "تعديل الشعبة",
                                Icons.phone,
                                c.divisionEditController,
                                c,
                                list[index]['division']),
                            TextFormF(
                                "تعديل المادة",
                                Icons.phone,
                                c.itemEditController,
                                c,
                                list[index]['item']),

                            TextFormF("تعديل التاريخ", Icons.price_check,
                                c.dateEditController, c, list[index]['date']),
                            TextFormF(
                                "تعديل عنوان الدرس ",
                                Icons.price_change,
                                c.titleOfLessonEditController,
                                c,
                                list[index]['titleOfLesson']),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF0b4972),
                              ),
                              onPressed: () {
                                if (E.idSchoolForAddSchool == 0) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('اختر المدرسة'),
                                    ),
                                  );
                                }
                                if (Far.currentState!.validate() &&
                                    E.idSchoolForAddSchool != 0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Planning(),
                                    ),
                                  );
                                }
                              },
                              child: const Text('NEXT',
                                  style: TextStyle(color: Color(0xFFECF0F3))),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xB10b4972),
                              ),
                              onPressed: () {
                                E.isAllowedToReBuild = true;
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'BACK',
                                style: TextStyle(
                                  color: Color(0xFFECF0F3),
                                ),
                              ),
                            ),
                          ],
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
    //  x.text = hint;
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
          enabled: lab == 'تعديل المادة' ? false : true,
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
/*
* /*
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
                        list[index]['educationalField'],),*/
*
* */
