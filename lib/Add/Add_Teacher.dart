import 'dart:async';
import 'package:education_evaluation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../HomeLayout.dart';
import '../main.dart';

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
        idSchool = list[index]['idSchool'];
        E.phoneController.text = list[index]['name'];
        E.itemController.text = item;
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
                      color: Colors.white54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Form(
                              key:far,
                              child: Column(
                                children: [
                                  TextFormF("الاسم", Icons.person, E.nameController, E),
                                  TextFormF("اسم المدرسة", Icons.phone, E.phoneController, E),
                                  TextFormF("الصف", Icons.person, E.classController, E),
                                  TextFormF("الشعبة", Icons.info_outline, E.divisionController, E),
                                  TextFormF("المادة", Icons.price_change, E.itemController, E),
                                  TextFormF("عنوان الدرس", Icons.price_check, E.titleOfLessonController, E),
                                  TextFormF("التاريخ", Icons.price_check, E.dateController, E),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const Divider(color: Colors.black, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'التخطيط :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s1 + '\t' + E.mark1.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark1 = E.ChangeStingVar(
                                            E.mark1.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark1 = E.ChangeStingVar(
                                            E.mark1.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark1 = E.ChangeStingVar(
                                            E.mark1.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark1 = E.ChangeStingVar(
                                            E.mark1.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark1 = E.ChangeStingVar(
                                            E.mark1.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s2 + '\t' + E.mark2.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark2 = E.ChangeStingVar(
                                            E.mark2.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark2 = E.ChangeStingVar(
                                            E.mark2.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark2 = E.ChangeStingVar(
                                            E.mark2.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark2 = E.ChangeStingVar(
                                            E.mark2.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark2 = E.ChangeStingVar(
                                            E.mark2.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s3 + '\t' + E.mark3.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark3 = E.ChangeStingVar(
                                            E.mark3.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark3 = E.ChangeStingVar(
                                            E.mark3.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark3 = E.ChangeStingVar(
                                            E.mark3.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark3 = E.ChangeStingVar(
                                            E.mark3.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark3 = E.ChangeStingVar(
                                            E.mark3.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s4 + '\t' + E.mark4.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark4 = E.ChangeStingVar(
                                            E.mark4.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark4 = E.ChangeStingVar(
                                            E.mark4.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark4 = E.ChangeStingVar(
                                            E.mark4.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark4 = E.ChangeStingVar(
                                            E.mark4.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark4 = E.ChangeStingVar(
                                            E.mark4.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s5 + '\t' + E.mark5.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark5 = E.ChangeStingVar(
                                            E.mark5.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark5 = E.ChangeStingVar(
                                            E.mark5.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark5 = E.ChangeStingVar(
                                            E.mark5.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark5 = E.ChangeStingVar(
                                            E.mark5.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark5 = E.ChangeStingVar(
                                            E.mark5.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.s6 + '\t' + E.mark6.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark6 = E.ChangeStingVar(
                                            E.mark6.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark6 = E.ChangeStingVar(
                                            E.mark6.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark6 = E.ChangeStingVar(
                                            E.mark6.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark6 = E.ChangeStingVar(
                                            E.mark6.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.mark6 = E.ChangeStingVar(
                                            E.mark6.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(color: Colors.black, thickness: 1),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                      'التنفيذ (طرائق التدريس والتمكن من المادة) :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions1 +
                                  '\t' +
                                  E.markExecution1.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution1 = E.ChangeStingVar(
                                            E.markExecution1.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution1 = E.ChangeStingVar(
                                            E.markExecution1.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution1 = E.ChangeStingVar(
                                            E.markExecution1.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution1 = E.ChangeStingVar(
                                            E.markExecution1.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution1 = E.ChangeStingVar(
                                            E.markExecution1.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions2 +
                                  '\t' +
                                  E.markExecution2.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution2 = E.ChangeStingVar(
                                            E.markExecution2.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution2 = E.ChangeStingVar(
                                            E.markExecution2.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution2 = E.ChangeStingVar(
                                            E.markExecution2.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution2 = E.ChangeStingVar(
                                            E.markExecution2.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution2 = E.ChangeStingVar(
                                            E.markExecution2.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions3 +
                                  '\t' +
                                  E.markExecution3.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution3 = E.ChangeStingVar(
                                            E.markExecution3.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution3 = E.ChangeStingVar(
                                            E.markExecution3.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution3 = E.ChangeStingVar(
                                            E.markExecution3.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution3 = E.ChangeStingVar(
                                            E.markExecution3.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution3 = E.ChangeStingVar(
                                            E.markExecution3.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions4 +
                                  '\t' +
                                  E.markExecution4.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution4 = E.ChangeStingVar(
                                            E.markExecution4.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution4 = E.ChangeStingVar(
                                            E.markExecution4.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution4 = E.ChangeStingVar(
                                            E.markExecution4.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution4 = E.ChangeStingVar(
                                            E.markExecution4.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution4 = E.ChangeStingVar(
                                            E.markExecution4.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions5 +
                                  '\t' +
                                  E.markExecution5.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution5 = E.ChangeStingVar(
                                            E.markExecution5.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution5 = E.ChangeStingVar(
                                            E.markExecution5.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution5 = E.ChangeStingVar(
                                            E.markExecution5.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution5 = E.ChangeStingVar(
                                            E.markExecution5.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution5 = E.ChangeStingVar(
                                            E.markExecution5.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.executions6 +
                                  '\t' +
                                  E.markExecution6.toString()),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution6 = E.ChangeStingVar(
                                            E.markExecution6.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution6 = E.ChangeStingVar(
                                            E.markExecution6.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution6 = E.ChangeStingVar(
                                            E.markExecution6.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution6 = E.ChangeStingVar(
                                            E.markExecution6.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markExecution6 = E.ChangeStingVar(
                                            E.markExecution6.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'التقويم البنائي والنهائي والغلق :',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.calender1 +
                                  '\t' +
                                  E.markCalender1.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender1 =
                                            E.changeStringVarForCalender(
                                                E.markCalender1.toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender1 = E.ChangeStingVar(
                                            E.markCalender1.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender1 = E.ChangeStingVar(
                                            E.markCalender1.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender1 = E.ChangeStingVar(
                                            E.markCalender1.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender1 = E.ChangeStingVar(
                                            E.markCalender1.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.calender2 +
                                  '\t' +
                                  E.markCalender2.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender2 = E.ChangeStingVar(
                                            E.markCalender2.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender2 = E.ChangeStingVar(
                                            E.markCalender2.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender2 = E.ChangeStingVar(
                                            E.markCalender2.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender2 = E.ChangeStingVar(
                                            E.markCalender2.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender2 = E.ChangeStingVar(
                                            E.markCalender2.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.calender3 +
                                  '\t' +
                                  E.markCalender3.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender3 = E.ChangeStingVar(
                                            E.markCalender3.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender3 = E.ChangeStingVar(
                                            E.markCalender3.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender3 = E.ChangeStingVar(
                                            E.markCalender3.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender3 = E.ChangeStingVar(
                                            E.markCalender3.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender3 = E.ChangeStingVar(
                                            E.markCalender3.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.calender4 +
                                  '\t' +
                                  E.markCalender4.toString()),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender4 = E.ChangeStingVar(
                                            E.markCalender4.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender4 = E.ChangeStingVar(
                                            E.markCalender4.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender4 = E.ChangeStingVar(
                                            E.markCalender4.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender4 = E.ChangeStingVar(
                                            E.markCalender4.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCalender4 = E.ChangeStingVar(
                                            E.markCalender4.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('إدارة الصف والعلاقات الإنسانية ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                ],
                              ),
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
                              Text(E.cAhr5 + E.markCaHr5.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr5 = E.ChangeStingVar(
                                            E.markCaHr5.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr5 = E.ChangeStingVar(
                                            E.markCaHr5.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr5 = E.ChangeStingVar(
                                            E.markCaHr5.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr5 = E.ChangeStingVar(
                                            E.markCaHr5.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr5 = E.ChangeStingVar(
                                            E.markCaHr5.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.cAhr6 + '\t' + E.markCaHr6.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr6 = E.ChangeStingVar(
                                            E.markCaHr6.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr6 = E.ChangeStingVar(
                                            E.markCaHr6.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr6 = E.ChangeStingVar(
                                            E.markCaHr6.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr6 = E.ChangeStingVar(
                                            E.markCaHr6.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr6 = E.ChangeStingVar(
                                            E.markCaHr6.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.cAhr7 + '\t' + E.markCaHr7.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr7 = E.ChangeStingVar(
                                            E.markCaHr7.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr7 = E.ChangeStingVar(
                                            E.markCaHr7.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr7 = E.ChangeStingVar(
                                            E.markCaHr7.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr7 = E.ChangeStingVar(
                                            E.markCaHr7.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr7 = E.ChangeStingVar(
                                            E.markCaHr7.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.cAhr8 + '\t' + E.markCaHr8.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr8 = E.ChangeStingVar(
                                            E.markCaHr8.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr8 = E.ChangeStingVar(
                                            E.markCaHr8.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr8 = E.ChangeStingVar(
                                            E.markCaHr8.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr8 = E.ChangeStingVar(
                                            E.markCaHr8.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr8 = E.ChangeStingVar(
                                            E.markCaHr8.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.cAhr9 + '\t' + E.markCaHr9.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr9 = E.ChangeStingVar(
                                            E.markCaHr9.toString(), '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr9 = E.ChangeStingVar(
                                            E.markCaHr9.toString(), '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr9 = E.ChangeStingVar(
                                            E.markCaHr9.toString(), '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr9 = E.ChangeStingVar(
                                            E.markCaHr9.toString(), '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markCaHr9 = E.ChangeStingVar(
                                            E.markCaHr9.toString(), '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(color: Colors.black, thickness: 1),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('مجال التخطيط :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.planningField1 +
                                  '\t' +
                                  E.markPlanningField1.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField1 = E.ChangeStingVar(
                                            E.markPlanningField1.toString(),
                                            '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField1 = E.ChangeStingVar(
                                            E.markPlanningField1.toString(),
                                            '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField1 = E.ChangeStingVar(
                                            E.markPlanningField1.toString(),
                                            '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField1 = E.ChangeStingVar(
                                            E.markPlanningField1.toString(),
                                            '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField1 = E.ChangeStingVar(
                                            E.markPlanningField1.toString(),
                                            '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.planningField2 +
                                  '\t' +
                                  E.markPlanningField2.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField2 = E.ChangeStingVar(
                                            E.markPlanningField2.toString(),
                                            '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField2 = E.ChangeStingVar(
                                            E.markPlanningField2.toString(),
                                            '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField2 = E.ChangeStingVar(
                                            E.markPlanningField2.toString(),
                                            '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField2 = E.ChangeStingVar(
                                            E.markPlanningField2.toString(),
                                            '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField2 = E.ChangeStingVar(
                                            E.markPlanningField2.toString(),
                                            '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.planningField3 +
                                  '\t' +
                                  E.markPlanningField3.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField3 = E.ChangeStingVar(
                                            E.markPlanningField3.toString(),
                                            '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField3 = E.ChangeStingVar(
                                            E.markPlanningField3.toString(),
                                            '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField3 = E.ChangeStingVar(
                                            E.markPlanningField3.toString(),
                                            '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField3 = E.ChangeStingVar(
                                            E.markPlanningField3.toString(),
                                            '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markPlanningField3 = E.ChangeStingVar(
                                            E.markPlanningField3.toString(),
                                            '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const SizedBox(height: 10),
                              const Divider(color: Colors.black, thickness: 1),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('المجال العلمي : ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.scientificField1 +
                                  '\t' +
                                  E.markScientificField1.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField1 =
                                            E.ChangeStingVar(
                                                E.markScientificField1
                                                    .toString(),
                                                '1');
                                        print(E.markScientificField1);
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField1 =
                                            E.ChangeStingVar(
                                                E.markScientificField1
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField1 =
                                            E.ChangeStingVar(
                                                E.markScientificField1
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField1 =
                                            E.ChangeStingVar(
                                                E.markScientificField1
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField1 =
                                            E.ChangeStingVar(
                                                E.markScientificField1
                                                    .toString(),
                                                '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.scientificField2 +
                                  '\t' +
                                  E.markScientificField2.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField2 =
                                            E.ChangeStingVar(
                                                E.markScientificField2
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField2 =
                                            E.ChangeStingVar(
                                                E.markScientificField2
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField2 =
                                            E.ChangeStingVar(
                                                E.markScientificField2
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField2 =
                                            E.ChangeStingVar(
                                                E.markScientificField2
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField2 =
                                            E.ChangeStingVar(
                                                E.markScientificField2
                                                    .toString(),
                                                '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(E.scientificField3 +
                                  '\t' +
                                  E.markScientificField3.toString()),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField3 =
                                            E.ChangeStingVar(
                                                E.markScientificField3
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField3 =
                                            E.ChangeStingVar(
                                                E.markScientificField3
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField3 =
                                            E.ChangeStingVar(
                                                E.markScientificField3
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField3 =
                                            E.ChangeStingVar(
                                                E.markScientificField3
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markScientificField3 =
                                            E.ChangeStingVar(
                                                E.markScientificField3
                                                    .toString(),
                                                '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(color: Colors.black, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('المجال التربوي والتقويم :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18)),
                                ],
                              ),
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
                                        E.markEducationField1 =
                                            E.ChangeStingVar(
                                                E.markEducationField1
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField1 =
                                            E.ChangeStingVar(
                                                E.markEducationField1
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField1 =
                                            E.ChangeStingVar(
                                                E.markEducationField1
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField1 =
                                            E.ChangeStingVar(
                                                E.markEducationField1
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField1 =
                                            E.ChangeStingVar(
                                                E.markEducationField1
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField2 =
                                            E.ChangeStingVar(
                                                E.markEducationField2
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField2 =
                                            E.ChangeStingVar(
                                                E.markEducationField2
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField2 =
                                            E.ChangeStingVar(
                                                E.markEducationField2
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField2 =
                                            E.ChangeStingVar(
                                                E.markEducationField2
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField2 =
                                            E.ChangeStingVar(
                                                E.markEducationField2
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField3 =
                                            E.ChangeStingVar(
                                                E.markEducationField3
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField3 =
                                            E.ChangeStingVar(
                                                E.markEducationField3
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField3 =
                                            E.ChangeStingVar(
                                                E.markEducationField3
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField3 =
                                            E.ChangeStingVar(
                                                E.markEducationField3
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField3 =
                                            E.ChangeStingVar(
                                                E.markEducationField3
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField4 =
                                            E.ChangeStingVar(
                                                E.markEducationField4
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField4 =
                                            E.ChangeStingVar(
                                                E.markEducationField4
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField4 =
                                            E.ChangeStingVar(
                                                E.markEducationField4
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField4 =
                                            E.ChangeStingVar(
                                                E.markEducationField4
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField4 =
                                            E.ChangeStingVar(
                                                E.markEducationField4
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField5 =
                                            E.ChangeStingVar(
                                                E.markEducationField5
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField5 =
                                            E.ChangeStingVar(
                                                E.markEducationField5
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField5 =
                                            E.ChangeStingVar(
                                                E.markEducationField5
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField5 =
                                            E.ChangeStingVar(
                                                E.markEducationField5
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField5 =
                                            E.ChangeStingVar(
                                                E.markEducationField5
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField6 =
                                            E.ChangeStingVar(
                                                E.markEducationField6
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField6 =
                                            E.ChangeStingVar(
                                                E.markEducationField6
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField6 =
                                            E.ChangeStingVar(
                                                E.markEducationField6
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField6 =
                                            E.ChangeStingVar(
                                                E.markEducationField6
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField6 =
                                            E.ChangeStingVar(
                                                E.markEducationField6
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField7 =
                                            E.ChangeStingVar(
                                                E.markEducationField7
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField7 =
                                            E.ChangeStingVar(
                                                E.markEducationField7
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField7 =
                                            E.ChangeStingVar(
                                                E.markEducationField7
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField7 =
                                            E.ChangeStingVar(
                                                E.markEducationField7
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField7 =
                                            E.ChangeStingVar(
                                                E.markEducationField7
                                                    .toString(),
                                                '5');
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
                                        E.markEducationField8 =
                                            E.ChangeStingVar(
                                                E.markEducationField8
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField8 =
                                            E.ChangeStingVar(
                                                E.markEducationField8
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField8 =
                                            E.ChangeStingVar(
                                                E.markEducationField8
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField8 =
                                            E.ChangeStingVar(
                                                E.markEducationField8
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField8 =
                                            E.ChangeStingVar(
                                                E.markEducationField8
                                                    .toString(),
                                                '5');
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
                              Row(
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField9 =
                                            E.ChangeStingVar(
                                                E.markEducationField9
                                                    .toString(),
                                                '1');
                                      },
                                      child: text('1'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField9 =
                                            E.ChangeStingVar(
                                                E.markEducationField9
                                                    .toString(),
                                                '2');
                                      },
                                      child: text('2'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField9 =
                                            E.ChangeStingVar(
                                                E.markEducationField9
                                                    .toString(),
                                                '3');
                                      },
                                      child: text('3'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField9 =
                                            E.ChangeStingVar(
                                                E.markEducationField9
                                                    .toString(),
                                                '4');
                                      },
                                      child: text('4'),
                                    ),
                                  ),
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: () {
                                        E.markEducationField9 =
                                            E.ChangeStingVar(
                                                E.markEducationField9
                                                    .toString(),
                                                '5');
                                      },
                                      child: text('5'),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black, thickness: 1),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MaterialButton(
                                    elevation: 20,
                                    onPressed: () {
                                      if(far.currentState!.validate()){
                                      var e = AlertDialog(
                                        scrollable: true,
                                        actions: [
                                          MaterialButton(
                                              color: const Color(0xFF0b4972),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('cancel',
                                                  style: TextStyle(
                                                      color: Colors.white,),),),
                                        ],
                                        title: const Text('ماذا تريد ان تفعل ؟ :',
                                            textDirection: TextDirection.rtl),
                                        shape: BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Divider(),
                                                MaterialButton(
                                                  onPressed: () {
                                                    E.saveAndInitialiseVariables();
                                                    E.insertInToTeacherTableDataBase(
                                                      name:
                                                          E.nameController.text,
                                                      phone: E
                                                          .phoneController.text,
                                                      clas: E
                                                          .classController.text,
                                                      date:
                                                          E.dateController.text,
                                                      division: E
                                                          .divisionController
                                                          .text,
                                                      item:
                                                          E.itemController.text,
                                                      titleOfLesson: E
                                                          .titleOfLessonController
                                                          .text,
                                                      cAhR: E.cAhR.toString(),
                                                      calender:
                                                          E.calender.toString(),
                                                      educationalField: E
                                                          .educationField
                                                          .toString(),
                                                      execution: E.execution
                                                          .toString(),
                                                      planning:
                                                          E.planning.toString(),
                                                      planningField: E
                                                          .planningField
                                                          .toString(),
                                                      scientificField: E
                                                          .scientificField
                                                          .toString(),
                                                      idSchool: idSchool,
                                                    );
                                                    E.nameController =
                                                        TextEditingController();
                                                    E.phoneController =
                                                        TextEditingController();
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
                                                  },
                                                  child: const Text(
                                                    'هل تريد الحفظ ؟',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  minWidth:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.7,
                                                  color:
                                                      const Color(0xFF0b4972),
                                                ),
                                                Divider(),
                                                MaterialButton(
                                                  minWidth:
                                                      MediaQuery.of(context)
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
                                                  color:
                                                      const Color(0xFF0b4972),
                                                ),
                                              ]),
                                        ),
                                      );
                                      showDialog(
                                          context: context,
                                          builder: (context) => e);
                                    }},
                                    child: const Text(
                                      'Save',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    color: const Color(0xFF0b4972),
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
* Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Card(
                        margin: const EdgeInsets.all(5),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: E.screensAdds[index]);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 15),
                            itemCount: E.screensAdds.length),
                      ),
                    ),
                  ),
* */
