import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Calender extends StatelessWidget {

  Calender({Key? key}) : super(key: key);

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
                      const Text('Calender'),
                      Text(E.calender1 + E.markCalender1.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.changeStringVarForCalender(E.markCalender1.toString(), '1');
                              },
                              child: const Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.ChangeStingVar(E.markCalender1.toString(), '2');
                              },
                              child: const Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.ChangeStingVar(E.markCalender1.toString(), '3');
                              },
                              child: const Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.ChangeStingVar(E.markCalender1.toString(), '4');
                              },
                              child: const Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.ChangeStingVar(E.markCalender1.toString(), '5');
                              },
                              child: const Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.calender2 + E.markCalender2.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 = E.ChangeStingVar(E.markCalender2.toString(), '1');
                              },
                              child: const Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 = E.ChangeStingVar(E.markCalender2.toString(), '2');
                              },
                              child: const Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 = E.ChangeStingVar(E.markCalender2.toString(), '3');
                              },
                              child: const Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 = E.ChangeStingVar(E.markCalender2.toString(), '4');
                              },
                              child: const Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 = E.ChangeStingVar(E.markCalender2.toString(), '5');
                              },
                              child: const Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.calender3 + E.markCalender3.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 = E.ChangeStingVar(E.markCalender3.toString(), '1');
                              },
                              child: const Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 = E.ChangeStingVar(E.markCalender3.toString(), '2');
                              },
                              child: const Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 = E.ChangeStingVar(E.markCalender3.toString(), '3');
                              },
                              child: const Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 = E.ChangeStingVar(E.markCalender3.toString(), '4');
                              },
                              child: const Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 = E.ChangeStingVar(E.markCalender3.toString(), '5');
                              },
                              child: const Text('5'),
                            ),
                          ),
                        ],
                      ),
                      Text(E.calender4 + E.markCalender4.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 = E.ChangeStingVar(E.markCalender4.toString(), '1');
                              },
                              child: const Text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 = E.ChangeStingVar(E.markCalender4.toString(), '2');
                              },
                              child: const Text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 = E.ChangeStingVar(E.markCalender4.toString(), '3');
                              },
                              child: const Text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 = E.ChangeStingVar(E.markCalender4.toString(), '4');
                              },
                              child: const Text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 = E.ChangeStingVar(E.markCalender4.toString(), '5');
                              },
                              child: const Text('5'),
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
