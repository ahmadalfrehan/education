import 'dart:async';
import 'package:education_evaluation/Add/AddTeacherMore/EducationField.dart';
import 'package:education_evaluation/Add/AddTeacherMore/ScientificField.dart';
import 'package:education_evaluation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../main.dart';
import 'AddTeacherMore/Planning.dart';
import 'AddTeacherMore/PlanningField.dart';
import 'AddTeacherMore/cAhR.dart';
import 'AddTeacherMore/calender.dart';
import 'AddTeacherMore/execution.dart';

class AddTeacher extends StatelessWidget {
  final int index;
  final List list;

  AddTeacher(this.index, this.list, {Key? key}) : super(key: key);
  var far = GlobalKey<FormState>();
  double heights = 40;
  double widths = 350;
  int idSchool = 0;

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }

  /**/
  List<Map<int, String>> school = [];

  selectSchools(List s) {
    school.clear();
    forEach(s) {
      school.add(s);
      //school.add(s.idSchool, s.name);
      //school.add(s[i]['name']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalAddTeacherSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('successfully added the ' + state.num.toString()),
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
        if (state is EducationalAddTeacherErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('An error occurred try again'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        var E = Education.get(context);
        //idSchool = list[index]['idSchool'];
        E.phoneController.text = list[index]['name'];
        if(E.isAllowedToReBuildWhenAddTeacher) {
          E.dateController.text = DateTime.now().toString().trim().substring(0,10);
        }
        E.isAllowedToUpdate = false;
        E.itemController.text = item;
        E.isAllowedToReBuildWhenAddTeacher = false;
        selectSchools(E.schools);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0b4972),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Add Teacher',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: const Color(0xFFECF0F3),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Form(
                              key: far,
                              child: Column(
                                children: [
                                  TextFormF("الاسم", Icons.person,
                                      E.nameController, E),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      30,
                                      10,
                                      30,
                                      10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: DropdownButton(
                                            isExpanded: true,
                                            menuMaxHeight:
                                                MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2,
                                            alignment: Alignment.center,
                                            elevation: 15,
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                value:
                                                    map['idSchool'].toString(),
                                                child: Text(
                                                    map['name'].toString()),
                                              );
                                            }).toList(),
                                            onChanged: (newValue) async {
                                              print(newValue);
                                              E.idSchoolForAddSchool =
                                                  Education.get(context)
                                                      .changeIntV(
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
                                  //TextFormF("اسم المدرسة", Icons.phone, E.phoneController, E),
                                  TextFormF("الصف", Icons.person,
                                      E.classController, E),
                                  TextFormF("الشعبة", Icons.info_outline,
                                      E.divisionController, E),
                                  TextFormF("المادة", Icons.price_change,
                                      E.itemController, E),
                                  TextFormF("عنوان الدرس", Icons.price_check,
                                      E.titleOfLessonController, E),
                                  TextFormF("التاريخ", Icons.price_check,
                                      E.dateController, E),
                                ],
                              ),
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
                                    if (E.idSchoolForAddSchool==0) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text('اختر المدرسة'),
                                        ),
                                      );
                                    }
                                    if (far.currentState!.validate() && E.idSchoolForAddSchool!=0) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Planning(),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text('NEXT',
                                      style:
                                          TextStyle(color: Color(0xFFECF0F3))),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget TextFormF(String lab, IconData Ic, var x, var c) {
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
          enabled: (lab == 'اسم المدرسة' || lab == 'المادة') ? false : true,
          fillColor: Colors.white,
          filled: true,
          labelText: lab,
        ),
        controller: x,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
/*
* Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Planning(),
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
                            ],
                          ),*/
///*
///Row(
//                             children: [
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: MaterialButton(
//                                     elevation: 20,
//                                     onPressed: () {
//                                       if (!school.contains(E.schoolName)) {
//                                         ScaffoldMessenger.of(context)
//                                             .showSnackBar(
//                                           const SnackBar(
//                                             content: Text('اختر المدرسة'),
//                                           ),
//                                         );
//                                       }
//                                       if (far.currentState!.validate() &&
//                                           !school.contains(E.schoolName)) {
//                                         var e = AlertDialog(
//                                           scrollable: true,
//                                           actions: [
//                                             MaterialButton(
//                                               color: const Color(0xFF0b4972),
//                                               onPressed: () {
//                                                 Navigator.of(context).pop();
//                                               },
//                                               child: const Text(
//                                                 'cancel',
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                           title: const Text(
//                                               'ماذا تريد ان تفعل ؟ :',
//                                               textDirection: TextDirection.rtl),
//                                           shape: BeveledRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(15),
//                                           ),
//                                           content: Container(
//                                             height: MediaQuery.of(context)
//                                                     .size
//                                                     .height /
//                                                 4,
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width *
//                                                 0.7,
//                                             child: Column(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   Divider(),
//                                                   MaterialButton(
//                                                     onPressed: () {
//                                                       E.saveAndInitialiseVariables();
//                                                       E.insertInToTeacherTableDataBase(
//                                                         name: E.nameController
//                                                             .text,
//                                                         phone: E.schoolName,
//                                                         clas: E.classController
//                                                             .text,
//                                                         date: E.dateController
//                                                             .text,
//                                                         division: E
//                                                             .divisionController
//                                                             .text,
//                                                         item: E.itemController
//                                                             .text,
//                                                         titleOfLesson: E
//                                                             .titleOfLessonController
//                                                             .text,
//                                                         cAhR: E.cAhR.toString(),
//                                                         calender: E.calender
//                                                             .toString(),
//                                                         educationalField: E
//                                                             .educationField
//                                                             .toString(),
//                                                         execution: E.execution
//                                                             .toString(),
//                                                         planning: E.planning
//                                                             .toString(),
//                                                         planningField: E
//                                                             .planningField
//                                                             .toString(),
//                                                         scientificField: E
//                                                             .scientificField
//                                                             .toString(),
//                                                         idSchool: E
//                                                             .idSchoolForAddSchool,
//                                                       );
//
//                                                       E.nameController =
//                                                           TextEditingController();
//                                                       E.schoolName =
//                                                           'اختر المدرسة';
//                                                       E.classController =
//                                                           TextEditingController();
//                                                       E.dateController =
//                                                           TextEditingController();
//                                                       E.divisionController =
//                                                           TextEditingController();
//                                                       E.itemController =
//                                                           TextEditingController();
//                                                       E.titleOfLessonController =
//                                                           TextEditingController();
//
//                                                       E.mark1 = '';
//                                                       E.mark2 = '';
//                                                       E.mark3 = '';
//                                                       E.mark4 = '';
//                                                       E.mark5 = '';
//                                                       E.mark6 = '';
//
//                                                       E.markExecution1 = '';
//                                                       E.markExecution2 = '';
//                                                       E.markExecution3 = '';
//                                                       E.markExecution4 = '';
//                                                       E.markExecution5 = '';
//                                                       E.markExecution6 = '';
//
//                                                       E.markCalender1 = '';
//                                                       E.markCalender2 = '';
//                                                       E.markCalender3 = '';
//                                                       E.markCalender4 = '';
//
//                                                       E.markCaHr1 = '';
//                                                       E.markCaHr2 = '';
//                                                       E.markCaHr3 = '';
//                                                       E.markCaHr4 = '';
//                                                       E.markCaHr5 = '';
//                                                       E.markCaHr6 = '';
//                                                       E.markCaHr7 = '';
//                                                       E.markCaHr8 = '';
//                                                       E.markCaHr9 = '';
//
//                                                       E.markPlanningField1 = '';
//                                                       E.markPlanningField2 = '';
//                                                       E.markPlanningField3 = '';
//
//                                                       E.markScientificField1 =
//                                                           '';
//                                                       E.markScientificField2 =
//                                                           '';
//                                                       E.markScientificField3 =
//                                                           '';
//
//                                                       E.markEducationField1 =
//                                                           '';
//                                                       E.markEducationField2 =
//                                                           '';
//                                                       E.markEducationField3 =
//                                                           '';
//                                                       E.markEducationField4 =
//                                                           '';
//                                                       E.markEducationField5 =
//                                                           '';
//                                                       E.markEducationField6 =
//                                                           '';
//                                                       E.markEducationField7 =
//                                                           '';
//                                                       E.markEducationField8 =
//                                                           '';
//                                                       E.markEducationField9 =
//                                                           '';
//                                                     },
//                                                     child: const Text(
//                                                       'هل تريد الحفظ ؟',
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                       ),
//                                                     ),
//                                                     minWidth:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width *
//                                                             0.7,
//                                                     color:
//                                                         const Color(0xFF0b4972),
//                                                   ),
//                                                   Divider(),
//                                                   MaterialButton(
//                                                     minWidth:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width *
//                                                             0.7,
//                                                     onPressed: () {},
//                                                     child: const Text(
//                                                       'هل تريد الحفظ والارسال ؟',
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                       ),
//                                                     ),
//                                                     color:
//                                                         const Color(0xFF0b4972),
//                                                   ),
//                                                 ]),
//                                           ),
//                                         );
//                                         showDialog(
//                                             context: context,
//                                             builder: (context) => e);
//                                       }
//                                     },
//                                     child: const Text(
//                                       'Save',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                     color: const Color(0xFF0b4972),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
///
///*/
