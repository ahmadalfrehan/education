import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class PlanningField extends StatelessWidget {

  PlanningField({Key? key}) : super(key: key);
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
          ],);
        },
      ),
    );
  }
}
