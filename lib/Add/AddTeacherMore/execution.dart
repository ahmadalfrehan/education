import 'package:education_evaluation/Add/AddTeacherMore/calender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Execution extends StatelessWidget {
  Execution({Key? key}) : super(key: key);

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        var E = Education.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0b4972),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'التنفيذ (طرائق التدريس والتمكن من المادة)'
              ,style: TextStyle(
              color: Colors.white,
              fontSize: 15,
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
                      const SizedBox(height: 10),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('التنفيذ (طرائق التدريس والتمكن من المادة) :',
                              style:
                                  TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                        ],
                      ),*/
                      const SizedBox(height: 10),
                      Text(E.executions1 + '\t' + E.markExecution1.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 =
                                    E.ChangeStingVar(E.markExecution1.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 =
                                    E.ChangeStingVar(E.markExecution1.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 =
                                    E.ChangeStingVar(E.markExecution1.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 =
                                    E.ChangeStingVar(E.markExecution1.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 =
                                    E.ChangeStingVar(E.markExecution1.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.executions2 + '\t' + E.markExecution2.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 =
                                    E.ChangeStingVar(E.markExecution2.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 =
                                    E.ChangeStingVar(E.markExecution2.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 =
                                    E.ChangeStingVar(E.markExecution2.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 =
                                    E.ChangeStingVar(E.markExecution2.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 =
                                    E.ChangeStingVar(E.markExecution2.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.executions3 + '\t' + E.markExecution3.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 =
                                    E.ChangeStingVar(E.markExecution3.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 =
                                    E.ChangeStingVar(E.markExecution3.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 =
                                    E.ChangeStingVar(E.markExecution3.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 =
                                    E.ChangeStingVar(E.markExecution3.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 =
                                    E.ChangeStingVar(E.markExecution3.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.executions4 + '\t' + E.markExecution4.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 =
                                    E.ChangeStingVar(E.markExecution4.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 =
                                    E.ChangeStingVar(E.markExecution4.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 =
                                    E.ChangeStingVar(E.markExecution4.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 =
                                    E.ChangeStingVar(E.markExecution4.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 =
                                    E.ChangeStingVar(E.markExecution4.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.executions5 + '\t' + E.markExecution5.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 =
                                    E.ChangeStingVar(E.markExecution5.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 =
                                    E.ChangeStingVar(E.markExecution5.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 =
                                    E.ChangeStingVar(E.markExecution5.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 =
                                    E.ChangeStingVar(E.markExecution5.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 =
                                    E.ChangeStingVar(E.markExecution5.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.executions6 + '\t' + E.markExecution6.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 =
                                    E.ChangeStingVar(E.markExecution6.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 =
                                    E.ChangeStingVar(E.markExecution6.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 =
                                    E.ChangeStingVar(E.markExecution6.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 =
                                    E.ChangeStingVar(E.markExecution6.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 =
                                    E.ChangeStingVar(E.markExecution6.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Calender(),
                                  ),
                                );
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
                      const Divider(color: Colors.black, thickness: 1),
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
