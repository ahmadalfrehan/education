import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Execution extends StatelessWidget {


  Execution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var E = Education.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text('التنفيذ'),
                      Text(E.executions1 + E.markExecution1.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 = E.ChangeStingVar(E.markExecution1.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 = E.ChangeStingVar(E.markExecution1.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 = E.ChangeStingVar(E.markExecution1.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 = E.ChangeStingVar(E.markExecution1.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution1 = E.ChangeStingVar(E.markExecution1.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.executions2 + E.markExecution2.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 = E.ChangeStingVar(E.markExecution2.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 = E.ChangeStingVar(E.markExecution2.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 = E.ChangeStingVar(E.markExecution2.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 = E.ChangeStingVar(E.markExecution2.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution2 = E.ChangeStingVar(E.markExecution2.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.executions3 + E.markExecution3.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 = E.ChangeStingVar(E.markExecution3.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 = E.ChangeStingVar(E.markExecution3.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 = E.ChangeStingVar(E.markExecution3.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 = E.ChangeStingVar(E.markExecution3.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution3 = E.ChangeStingVar(E.markExecution3.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.executions4 + E.markExecution4.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 = E.ChangeStingVar(E.markExecution4.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 = E.ChangeStingVar(E.markExecution4.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 = E.ChangeStingVar(E.markExecution4.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 = E.ChangeStingVar(E.markExecution4.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution4 = E.ChangeStingVar(E.markExecution4.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.executions5 + E.markExecution5.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 = E.ChangeStingVar(E.markExecution5.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 = E.ChangeStingVar(E.markExecution5.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 = E.ChangeStingVar(E.markExecution5.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 = E.ChangeStingVar(E.markExecution5.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution5 = E.ChangeStingVar(E.markExecution5.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.executions6 + E.markExecution6.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 = E.ChangeStingVar(E.markExecution6.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 = E.ChangeStingVar(E.markExecution6.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 = E.ChangeStingVar(E.markExecution6.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 = E.ChangeStingVar(E.markExecution6.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markExecution6 = E.ChangeStingVar(E.markExecution6.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
