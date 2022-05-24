/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class EducationField extends StatelessWidget {
  EducationField({Key? key}) : super(key: key);

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
              'المجال التربوي والتقويم',
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(color: Colors.black, thickness: 1),
                      /*         Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('المجال التربوي والتقويم :',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18)),
                        ],
                      ),
*/
                      const SizedBox(height: 10),
                      Text(E.education1 +
                          '\t' +
                          E.markEducationField1.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField1 = E.ChangeStingVar(
                                    E.markEducationField1.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education2 +
                          '\t' +
                          E.markEducationField2.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField2 = E.ChangeStingVar(
                                    E.markEducationField2.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education3 +
                          '\t' +
                          E.markEducationField3.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField3 = E.ChangeStingVar(
                                    E.markEducationField3.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education4 +
                          '\t' +
                          E.markEducationField4.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField4 = E.ChangeStingVar(
                                    E.markEducationField4.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education5 +
                          '\t' +
                          E.markEducationField5.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField5 = E.ChangeStingVar(
                                    E.markEducationField5.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education6 +
                          '\t' +
                          E.markEducationField6.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField6 = E.ChangeStingVar(
                                    E.markEducationField6.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education7 +
                          '\t' +
                          E.markEducationField7.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField7 = E.ChangeStingVar(
                                    E.markEducationField7.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education8 +
                          '\t' +
                          E.markEducationField8.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField8 = E.ChangeStingVar(
                                    E.markEducationField8.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.education9 +
                          '\t' +
                          E.markEducationField9.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markEducationField9 = E.ChangeStingVar(
                                    E.markEducationField9.toString(), '5');
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
                                  if (state
                                          is EducationalCollectMarksSuccessState &&
                                      E.isAllowedToUpdate) {
                                    c.saveAndInitialiseVariables();
                                    E.plusAndCollectMarks();
                                    c.updateInTeacherTableDataBase(
                                      name: c.nameController.text,
                                      phone: E.schoolName,
                                      clas: c.divisionController.text,
                                      division: c.classController.text,
                                      date: c.dateController.text,
                                      titleOfLesson:
                                          E.titleOfLessonController.text,
                                      item: E.itemController.text,
                                      cAhR: E.cAhR.toString(),
                                      calender: E.calender.toString(),
                                      educationalField:
                                          E.educationField.toString(),
                                      execution: E.execution.toString(),
                                      planning: E.planning.toString(),
                                      planningField: E.planningField.toString(),
                                      scientificField:
                                          E.scientificField.toString(),
                                      finalMarks: E.finalMarksCollected as int,
                                      idTeacher: E.idTeacherForEdit,
                                    );
                                    E.nameController = TextEditingController();
                                    E.schoolName = 'اختر المدرسة';
                                    E.classController = TextEditingController();
                                    E.dateController = TextEditingController();
                                    E.divisionController =
                                        TextEditingController();
                                    //E.itemController = TextEditingController();
                                    E.titleOfLessonController =
                                        TextEditingController();
                                    E.mark1 = '';
                                    E.mark2 = '';
                                    E.mark3 = '';
                                    E.mark4 = '';
                                    E.mark5 = '';
                                    E.mark6 = '';
                                    E.isAllowedToReBuild = true;
                                    E.idSchoolForAddSchool = 0;
                                    E.idTeacherForEdit = 0;
                                    E.isAllowedToUpdate = false;
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
                                      content: Container(
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
                                              Divider(),
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
                                                    educationalField: E
                                                        .educationField
                                                        .toString(),
                                                    execution:
                                                        E.execution.toString(),
                                                    planning:
                                                        E.planning.toString(),
                                                    planningField: E
                                                        .planningField
                                                        .toString(),
                                                    scientificField: E
                                                        .scientificField
                                                        .toString(),
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
                                              Divider(),
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
                                        builder: (context) => e);
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
*/