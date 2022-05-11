import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../Search/Search.dart';
import '../constant.dart';
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

  List<String> school = [];

  selectSchools(List s) {
    school.clear();
    for (int i = 0; i < s.length; i++) {
      school.add(s[i]['name']);
    }
  }
  Edit(this.index, this.list, {Key? key}) : super(key: key);

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
                builder: (context) => HomeLayout(),
              ),
              (route) => false,
            ),
          );
        }
      },
      builder: (context, state) {
        var E = Education.get(context);
        var c = Education.get(context);
        E.itemController.text = item;
        selectSchools(E.schools);
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                      key: Far,
                      child: Column(
                        children: [
                          TextFormF("تعديل الاسم ", Icons.person,
                              c.nameController, c, list[index]['name']),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    menuMaxHeight:
                                        MediaQuery.of(context).size.height / 2,
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
                                    items: school.map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value.toString()),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) async {
                                      print(newValue);
                                      E.schoolName = Education.get(context)
                                          .changeStringV(E.schoolName,
                                              newValue.toString());
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextFormF("تعديل الصف", Icons.info_outline,
                              c.classController, c, list[index]['class']),
                          TextFormF("تعديل الشعبة", Icons.phone,
                              c.divisionController, c, list[index]['division']),
                          TextFormF("تعديل التاريخ", Icons.price_check,
                              c.dateController, c, list[index]['date']),
                          TextFormF(
                              "تعديل عنوان الدرس ",
                              Icons.price_change,
                              c.titleOfLessonController,
                              c,
                              list[index]['titleOfLesson']),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        children: [
                      const SizedBox(height: 10),
                      Planning(),
                      const SizedBox(height: 10),
                      Execution(),
                      const SizedBox(height: 10),
                      Calender(),
                      const SizedBox(height: 10),
                      CaHr(),
                      const SizedBox(height: 10),
                      PlanningField(),
                      ScientificField(),
                      const SizedBox(height: 10),
                      EducationField(),
                      const SizedBox(height: 10),
],              ),
                    ),
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
                        if (!school.contains(E.schoolName)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('اختر المدرسة'),
                            ),
                          );
                        }
                        if (Far.currentState!.validate() &&
                            school.contains(E.schoolName)) {
                          c.saveAndInitialiseVariables();
                          c.updateInTeacherTableDataBase(
                              name: c.nameController.text,
                              phone: E.schoolName,
                              clas: c.divisionController.text,
                              division: c.classController.text,
                              date: c.dateController.text,
                              titleOfLesson: c.titleOfLessonController.text,
                              item: c.itemController.text,
                              cAhR: E.cAhR.toString(),
                              calender: E.calender.toString(),
                              educationalField: E.educationField.toString(),
                              execution: E.execution.toString(),
                              planning: E.planning.toString(),
                              planningField: E.planningField.toString(),
                              scientificField: E.scientificField.toString(),
                              idTeacher: list[index]['idTeacher']);
                        }
                        E.nameController = TextEditingController();
                        E.schoolName = 'اختر المدرسة';
                        E.classController = TextEditingController();
                        E.dateController = TextEditingController();
                        E.divisionController = TextEditingController();
                        E.itemController = TextEditingController();
                        E.titleOfLessonController = TextEditingController();

                        E.mark1 = '';
                        E.mark2 = '';
                        E.mark3 = '';
                        E.mark4 = '';
                        E.mark5 = '';
                        E.mark6 = '';

                        E.markExecution1 = '';
                        E.markExecution2 = '';
                        E.markExecution3 = '';
                        E.markExecution4 = '';
                        E.markExecution5 = '';
                        E.markExecution6 = '';

                        E.markCalender1 = '';
                        E.markCalender2 = '';
                        E.markCalender3 = '';
                        E.markCalender4 = '';

                        E.markCaHr1 = '';
                        E.markCaHr2 = '';
                        E.markCaHr3 = '';
                        E.markCaHr4 = '';
                        E.markCaHr5 = '';
                        E.markCaHr6 = '';
                        E.markCaHr7 = '';
                        E.markCaHr8 = '';
                        E.markCaHr9 = '';

                        E.markPlanningField1 = '';
                        E.markPlanningField2 = '';
                        E.markPlanningField3 = '';

                        E.markScientificField1 = '';
                        E.markScientificField2 = '';
                        E.markScientificField3 = '';

                        E.markEducationField1 = '';
                        E.markEducationField2 = '';
                        E.markEducationField3 = '';
                        E.markEducationField4 = '';
                        E.markEducationField5 = '';
                        E.markEducationField6 = '';
                        E.markEducationField7 = '';
                        E.markEducationField8 = '';
                        E.markEducationField9 = '';
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
          enabled: lab == 'تعديل المادة '
              ? false
              : true,
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
