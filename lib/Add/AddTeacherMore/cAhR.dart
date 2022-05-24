import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';
import '../../HomeLayout.dart';
import '../../main.dart';
import 'PlanningField.dart';

class CaHr extends StatelessWidget {
  CaHr({Key? key}) : super(key: key);

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalCollectMarksErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.red,
              content: Text('من فضلك تحقق بانك قمت باضافة كل العلامات '),
            ),
          );
        }
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
          main();
        }
      },
      builder: (context, state) {
        var E = Education.get(context);
        var c = Education.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0b4972),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'إدارة الصف والعلاقات الإنسانية',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(color: Colors.black, thickness: 1),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('إدارة الصف والعلاقات الإنسانية ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                        ],
                      ),*/
                      const SizedBox(height: 10),
                      Text(
                        E.cAhR1 + '\t' + E.markCaHr1.toString(),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr1 = E.ChangeStingVar(
                                    E.markCaHr1.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr1 = E.ChangeStingVar(
                                    E.markCaHr1.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr1 = E.ChangeStingVar(
                                    E.markCaHr1.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr1 = E.ChangeStingVar(
                                    E.markCaHr1.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr1 = E.ChangeStingVar(
                                    E.markCaHr1.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.cAhR2 + '\t' + E.markCaHr2.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr2 = E.ChangeStingVar(
                                    E.markCaHr2.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr2 = E.ChangeStingVar(
                                    E.markCaHr2.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr2 = E.ChangeStingVar(
                                    E.markCaHr2.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr2 = E.ChangeStingVar(
                                    E.markCaHr2.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr2 = E.ChangeStingVar(
                                    E.markCaHr2.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.cAhR3 + '\t' + E.markCaHr3.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr3 = E.ChangeStingVar(
                                    E.markCaHr3.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr3 = E.ChangeStingVar(
                                    E.markCaHr3.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr3 = E.ChangeStingVar(
                                    E.markCaHr3.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr3 = E.ChangeStingVar(
                                    E.markCaHr3.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr3 = E.ChangeStingVar(
                                    E.markCaHr3.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.cAhr4 + '\t' + E.markCaHr4.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr4 = E.ChangeStingVar(
                                    E.markCaHr4.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr4 = E.ChangeStingVar(
                                    E.markCaHr4.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr4 = E.ChangeStingVar(
                                    E.markCaHr4.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr4 = E.ChangeStingVar(
                                    E.markCaHr4.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCaHr4 = E.ChangeStingVar(
                                    E.markCaHr4.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Divider(color: Colors.black, thickness: 1),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(
                                elevation: 20,
                                onPressed: () {
                                  E.plusAndCollectMarks();
                                  if ((state is EducationalCollectMarksSuccessState) && (E.isAllowedToUpdate)) {
                                    c.saveAndInitialiseVariables();
                                    E.plusAndCollectMarks();
                                    c.updateInTeacherTableDataBase(
                                      name: c.nameEditController.text,
                                      phone: E.schoolName,
                                      clas: c.divisionEditController.text,
                                      division: c.classEditController.text,
                                      date: c.dateEditController.text,
                                      titleOfLesson:
                                          E.titleOfLessonEditController.text,
                                      item: E.itemEditController.text,
                                      cAhR: E.cAhR.toString(),
                                      calender: E.calender.toString(),
                                      execution: E.execution.toString(),
                                      planning: E.planning.toString(),
                                      finalMarks: E.finalMarksCollected as int,
                                      idTeacher: E.idTeacherForEdit,
                                      idSchool: E.idSchoolForAddSchool,
                                    );
                                    E.nameEditController =
                                        TextEditingController();
                                    E.schoolName = 'اختر المدرسة';
                                    E.classEditController =
                                        TextEditingController();
                                    E.dateEditController =
                                        TextEditingController();
                                    E.divisionEditController =
                                        TextEditingController();
                                    //E.itemController = TextEditingController();
                                    E.titleOfLessonEditController =
                                        TextEditingController();
                                    E.mark1 = '';
                                    E.mark2 = '';
                                    E.mark3 = '';
                                    E.mark4 = '';
                                    E.mark5 = '';
                                    E.mark6 = '';
                                    E.idSchoolForAddSchool = 0;
                                    E.idTeacherForEdit = 0;
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
                                    E.isAllowedToReBuild = true;
                                  }
                                  if (state
                                          is EducationalCollectMarksSuccessState &&
                                      !E.isAllowedToUpdate) {
                                    var e = AlertDialog(
                                      scrollable: true,
                                      actions: [
                                        MaterialButton(
                                          color: const Color(0xFF0b4972),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'cancel',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      title: const Text('ماذا تريد ان تفعل ؟ :',
                                          textDirection: TextDirection.rtl),
                                      shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      content: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                4,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Divider(),
                                              MaterialButton(
                                                onPressed: () {
                                                  E.saveAndInitialiseVariables();
                                                  E.plusAndCollectMarks();
                                                  E.insertInToTeacherTableDataBase(
                                                    name: E.nameController.text,
                                                    phone: E.schoolName,
                                                    clas:
                                                        E.classController.text,
                                                    date: E.dateController.text,
                                                    division: E
                                                        .divisionController
                                                        .text,
                                                    item: E.itemController.text,
                                                    titleOfLesson: E
                                                        .titleOfLessonController
                                                        .text,
                                                    cAhR: E.cAhR.toString(),
                                                    calender:
                                                        E.calender.toString(),
                                                    execution:
                                                        E.execution.toString(),
                                                    planning:
                                                        E.planning.toString(),
                                                    finalMarks:
                                                        E.finalMarksCollected
                                                            as int,
                                                    idSchool:
                                                        E.idSchoolForAddSchool,
                                                  );
                                                  E.nameController =
                                                      TextEditingController();
                                                  E.schoolName = 'اختر المدرسة';
                                                  E.classController =
                                                      TextEditingController();
                                                  E.dateController =
                                                      TextEditingController();
                                                  E.divisionController =
                                                      TextEditingController();
                                                  E.itemController =
                                                      TextEditingController();
                                                  E.titleOfLessonController =
                                                      TextEditingController();
                                                  E.idSchoolForAddSchool = 0;
                                                  E.isAllowedToReBuildWhenAddTeacher =
                                                      true;
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
                                                },
                                                child: const Text(
                                                  'هل تريد الحفظ ؟',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                minWidth: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                color: const Color(0xFF0b4972),
                                              ),
                                              const Divider(),
                                              MaterialButton(
                                                minWidth: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                onPressed: () {},
                                                child: const Text(
                                                  'هل تريد الحفظ والارسال ؟',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                color: const Color(0xFF0b4972),
                                              ),
                                            ]),
                                      ),
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (context) => e,
                                    );
                                  }
                                  },
                                child: Text(
                                  E.isAllowedToUpdate ? 'Edit' : 'Save',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                color: const Color(0xFF0b4972),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 20,
                              primary: const Color(0xB10b4972),
                            ),
                            onPressed: () {
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
}
