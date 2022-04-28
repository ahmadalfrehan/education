import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class PlanningField extends StatelessWidget {

  PlanningField({Key? key}) : super(key: key);

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
                      Text('planning Field'),
                      Text(E.planningField1 + E.markPlanningField1.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField1 = E.ChangeStingVar(E.markPlanningField1.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField1 = E.ChangeStingVar(E.markPlanningField1.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField1 = E.ChangeStingVar(E.markPlanningField1.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField1 = E.ChangeStingVar(E.markPlanningField1.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField1 = E.ChangeStingVar(E.markPlanningField1.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.planningField2 + E.markPlanningField2.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField2 = E.ChangeStingVar(E.markPlanningField2.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField2 = E.ChangeStingVar(E.markPlanningField2.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField2 = E.ChangeStingVar(E.markPlanningField2.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField2 = E.ChangeStingVar(E.markPlanningField2.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField2 = E.ChangeStingVar(E.markPlanningField2.toString(), '5');
                              },
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.planningField3 + E.markPlanningField3.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField3 = E.ChangeStingVar(E.markPlanningField3.toString(), '1');
                              },
                              child: Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField3 = E.ChangeStingVar(E.markPlanningField3.toString(), '2');
                              },
                              child: Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField3 = E.ChangeStingVar(E.markPlanningField3.toString(), '3');
                              },
                              child: Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField3 = E.ChangeStingVar(E.markPlanningField3.toString(), '4');
                              },
                              child: Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markPlanningField3 = E.ChangeStingVar(E.markPlanningField3.toString(), '5');
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
