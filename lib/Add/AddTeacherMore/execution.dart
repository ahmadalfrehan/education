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
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var E = Education.get(context);
          return Column(children: [

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
          ],);
        },
      ),
    );
  }
}
